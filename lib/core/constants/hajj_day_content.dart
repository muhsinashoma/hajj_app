//lib/core/constants/hajj_day_content.dart

import 'hajj_days/day_8.dart';
import 'hajj_days/day_9.dart';
import 'hajj_days/day_10.dart';
import 'hajj_days/day_11.dart';
import 'hajj_days/day_12.dart';
import 'hajj_days/day_13.dart';

//English content is imported from day_8_en.dart, day_9_en.dart, etc.
import 'hajj_days/day_8_en.dart';
import 'hajj_days/day_9_en.dart';
import 'hajj_days/day_10_en.dart';
import 'hajj_days/day_11_en.dart';
import 'hajj_days/day_12_en.dart';
import 'hajj_days/day_13_en.dart';

//Arabic content is imported from day_8_ar.dart, day_9_ar.dart, etc.
import 'hajj_days/day_8_ar.dart';
import 'hajj_days/day_9_ar.dart';
import 'hajj_days/day_10_ar.dart';
import 'hajj_days/day_11_ar.dart';
import 'hajj_days/day_12_ar.dart';
import 'hajj_days/day_13_ar.dart';

//Safar
import 'hajj_days/safar.dart';
import 'hajj_days/safar_en.dart';
import 'hajj_days/safar_ar.dart';

//Hajj Preparation
import 'hajj_days/hajj_preparation.dart';
import 'hajj_days/hajj_preparation_en.dart';
import 'hajj_days/hajj_preparation_ar.dart';

//Essentials
import 'hajj_days/essentials.dart';
import 'hajj_days/essentials_en.dart';
import 'hajj_days/essentials_ar.dart';

// TODO: Makkah Activities — create hajj_days/makkah_activities.dart,
// makkah_activities_en.dart, makkah_activities_ar.dart, then import
// here and replace the placeholder maps below.

// TODO: Madinah Activities — create hajj_days/madinah_activities.dart,
// madinah_activities_en.dart, madinah_activities_ar.dart, then import
// here and replace the placeholder maps below.

class HajjDayContent {
  static final Map<int, Map<String, dynamic>> bangla = {
    8: day8,
    9: day9,
    10: day10,
    11: day11tashreeqDays,
    12: day12tashreeqDays,
    13: day13tashreeqDays,
  };

  static final Map<int, Map<String, dynamic>> english = {
    8: day8En,
    9: day9En,
    10: day10En,
    11: day11tashreeqDaysEn,
    12: day12tashreeqDaysEn,
    13: day13tashreeqDaysEn,
  };

  static final Map<int, Map<String, dynamic>> arabic = {
    8: day8Ar,
    9: day9Ar,
    10: day10Ar,
    11: day11tashreeqDaysAr,
    12: day12tashreeqDaysAr,
    13: day13tashreeqDaysAr,
  };

  static Map<int, Map<String, dynamic>> getData(String lang) {
    switch (lang) {
      case "bn":
        return bangla;
      case "ar":
        return arabic;
      default:
        return english;
    }
  }

  // ================= SAFAR =================

  static final Map<String, Map<String, dynamic>> safarContent = {
    "bn": safar,
    "en": safarEn,
    "ar": safarAr,
  };

  static Map<String, dynamic> getSafarData(String lang) {
    switch (lang) {
      case "ar":
        return safarAr;
      case "en":
        return safarEn;
      default:
        return safar;
    }
  }

  // ================= HAJJ PREPARATION =================

  static final Map<String, Map<String, dynamic>> hajjPreparationContent = {
    "bn": hajjPreparation,
    "en": hajjPreparationEn,
    "ar": hajjPreparationAr,
  };

  static Map<String, dynamic> getHajjPreparationData(String lang) {
    switch (lang) {
      case "ar":
        return hajjPreparationAr;
      case "en":
        return hajjPreparationEn;
      default:
        return hajjPreparation;
    }
  }

// ================= ESSENTIALS =================

  static final Map<String, Map<String, dynamic>> essentialsContent = {
    "bn": essentials,
    "en": essentialsEn,
    "ar": essentialsAr,
  };

  static Map<String, dynamic> getEssentialsData(String lang) {
    switch (lang) {
      case "ar":
        return essentialsAr;
      case "en":
        return essentialsEn;
      default:
        return essentials;
    }
  }
  // ================= MAKKAH ACTIVITIES (placeholder — content pending) =================

  static const Map<String, dynamic> _makkahActivitiesPlaceholder = {
    "title": "মক্কার কার্যক্রম",
    "subtitle": null,
    "sections": <Map<String, dynamic>>[],
  };

  static Map<String, dynamic> getMakkahActivitiesData(String lang) {
    // Swap in real bn/en/ar maps here once makkah_activities.dart,
    // makkah_activities_en.dart, makkah_activities_ar.dart are created.
    return _makkahActivitiesPlaceholder;
  }

  // ================= MADINAH ACTIVITIES (placeholder — content pending) =================

  static const Map<String, dynamic> _madinahActivitiesPlaceholder = {
    "title": "মদিনার কার্যক্রম",
    "subtitle": null,
    "sections": <Map<String, dynamic>>[],
  };

  static Map<String, dynamic> getMadinahActivitiesData(String lang) {
    // Swap in real bn/en/ar maps here once madinah_activities.dart,
    // madinah_activities_en.dart, madinah_activities_ar.dart are created.
    return _madinahActivitiesPlaceholder;
  }
} // end of class HajjDayContent