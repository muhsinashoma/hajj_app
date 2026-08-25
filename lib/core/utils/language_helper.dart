// lib/core/utils/language_helper.dart

//Centralizes RTL/LTR + font logic so it isn't duplicated per page.

// import 'package:flutter/material.dart';
// import 'package:hajj_app/core/constants/app_strings.dart';

// class LanguageHelper {
//   static bool isRtl(String lang) => lang == HajjTexts.ar;

//   static TextDirection direction(String lang) =>
//       isRtl(lang) ? TextDirection.rtl : TextDirection.ltr;

//   static TextAlign textAlign(String lang) =>
//       isRtl(lang) ? TextAlign.right : TextAlign.left;

//   /// Arabic script benefits from a slightly larger line-height and font
//   /// size for readability (diacritics, ligatures).
//   static double contentFontSize(String lang) => isRtl(lang) ? 17 : 16;

//   static double contentLineHeight(String lang) => isRtl(lang) ? 2.0 : 1.7;
// }

// lib/core/utils/language_helper.dart

import 'package:flutter/material.dart';
import 'package:hajj_app/core/constants/app_strings.dart';

class LanguageHelper {
  static bool isRtl(String lang) => lang == HajjTexts.ar;

  static TextDirection direction(String lang) =>
      isRtl(lang) ? TextDirection.rtl : TextDirection.ltr;

  /// Headings/titles stay left/right aligned per direction — short lines
  /// don't benefit from justification and can look stretched/odd.
  static TextAlign textAlign(String lang) =>
      isRtl(lang) ? TextAlign.right : TextAlign.left;

  /// Body paragraphs are justified for all three languages for a clean,
  /// even-margin reading experience.
  static TextAlign contentAlign(String lang) => TextAlign.justify;

  static double contentFontSize(String lang) => isRtl(lang) ? 17 : 16;

  static double contentLineHeight(String lang) => isRtl(lang) ? 2.0 : 1.7;
}
