//lib/core/constants/hajj_day_content.dart

import 'hajj_days/day_8.dart';
import 'hajj_days/day_9.dart';
import 'hajj_days/day_10.dart';
import 'hajj_days/day_11.dart';
import 'hajj_days/day_12.dart';
import 'hajj_days/day_13.dart';

class HajjDayContent {
  static final Map<int, Map<String, dynamic>> bangla = {
    8: day8,
    9: day9,
    10: day10,
    11: day11tashreeqDays,
    12: day12tashreeqDays,
    13: day13tashreeqDays,
  };

  static final Map<int, Map<String, dynamic>> english = {};

  static final Map<int, Map<String, dynamic>> arabic = {};

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
