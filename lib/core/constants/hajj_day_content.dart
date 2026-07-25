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
}
