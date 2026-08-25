// lib/core/utils/rich_text_parser.dart

import 'package:flutter/material.dart';

/// Parses simple markdown-style **bold** markers into styled TextSpans.
/// Keeps content data (day_8.dart, safar.dart, etc.) as plain strings
/// while still rendering emphasis correctly.
class RichContentText extends StatelessWidget {
  final String text;
  final TextStyle baseStyle;
  final TextStyle? boldStyle;
  final TextAlign? textAlign;

  const RichContentText({
    super.key,
    required this.text,
    required this.baseStyle,
    this.boldStyle,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveBoldStyle =
        boldStyle ?? baseStyle.copyWith(fontWeight: FontWeight.bold);

    return RichText(
      textAlign: textAlign ?? TextAlign.start,
      text: TextSpan(
        style: baseStyle,
        children: _parseSpans(text, baseStyle, effectiveBoldStyle),
      ),
    );
  }

  List<InlineSpan> _parseSpans(
    String input,
    TextStyle normal,
    TextStyle bold,
  ) {
    final spans = <InlineSpan>[];
    final pattern = RegExp(r'\*\*(.*?)\*\*', dotAll: true);
    int start = 0;

    for (final match in pattern.allMatches(input)) {
      if (match.start > start) {
        spans.add(TextSpan(text: input.substring(start, match.start)));
      }
      spans.add(TextSpan(text: match.group(1), style: bold));
      start = match.end;
    }
    if (start < input.length) {
      spans.add(TextSpan(text: input.substring(start)));
    }
    if (spans.isEmpty) {
      spans.add(TextSpan(text: input));
    }
    return spans;
  }
}
