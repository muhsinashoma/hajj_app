// lib/features/hajj/presentation/widgets/day_content_view.dart

import 'package:flutter/material.dart';
import 'package:hajj_app/core/utils/language_helper.dart';
import 'package:hajj_app/core/utils/rich_text_parser.dart';

class DayContentView extends StatelessWidget {
  final Map<String, dynamic>? data;
  final String lang;

  const DayContentView({
    super.key,
    required this.data,
    required this.lang,
  });

  @override
  Widget build(BuildContext context) {
    if (data == null) {
      return const _ContentUnavailable();
    }

    final title = data!["title"] as String? ?? "";
    final subtitle = data!["subtitle"] as String?;
    final sections = (data!["sections"] as List?) ?? const [];

    final textAlign = LanguageHelper.textAlign(lang);
    final fontSize = LanguageHelper.contentFontSize(lang);
    final lineHeight = LanguageHelper.contentLineHeight(lang);

    return Directionality(
      textDirection: LanguageHelper.direction(lang),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (title.isNotEmpty)
              Text(
                title,
                textAlign: textAlign,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            if (subtitle != null && subtitle.isNotEmpty) ...[
              const SizedBox(height: 6),
              Text(
                subtitle,
                textAlign: textAlign,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
            const SizedBox(height: 24),
            if (sections.isEmpty)
              const _ContentUnavailable()
            else
              ...sections.map(
                (section) => _SectionBlock(
                  section: section as Map<String, dynamic>,
                  textAlign: textAlign,
                  fontSize: fontSize,
                  lineHeight: lineHeight,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _SectionBlock extends StatelessWidget {
  final Map<String, dynamic> section;
  final TextAlign textAlign;
  final double fontSize;
  final double lineHeight;

  const _SectionBlock({
    required this.section,
    required this.textAlign,
    required this.fontSize,
    required this.lineHeight,
  });

  @override
  Widget build(BuildContext context) {
    final heading = section["heading"] as String? ?? "";
    final content = section["content"] as String? ?? "";

    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (heading.isNotEmpty)
            Text(
              heading,
              textAlign: textAlign,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
          const SizedBox(height: 10),
          if (content.isNotEmpty)
            RichContentText(
              text: content.trim(),
              textAlign: textAlign,
              baseStyle: TextStyle(
                fontSize: fontSize,
                height: lineHeight,
                color: Colors.black87,
              ),
            ),
        ],
      ),
    );
  }
}

class _ContentUnavailable extends StatelessWidget {
  const _ContentUnavailable();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 48),
      child: Column(
        children: [
          Icon(Icons.info_outline, size: 40, color: Colors.grey.shade400),
          const SizedBox(height: 12),
          Text(
            "Content not available for this selection yet.",
            style: TextStyle(color: Colors.grey.shade600),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
