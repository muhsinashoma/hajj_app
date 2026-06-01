import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hajj_app/core/constants/app_strings.dart';

import '../../cubit/hajj/hajj_cubit.dart';
import '../../cubit/hajj/hajj_state.dart';

class HajjDayActivitiesPage extends StatelessWidget {
  const HajjDayActivitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HajjCubit, HajjState>(
      builder: (context, state) {
        final day = state.selectedDay;
        final lang = state.language;

        if (day == null) {
          return const Center(
            child: Text("No day selected"),
          );
        }

        final content = _getDayContent(day, lang);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // HEADER
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      // context.read<HajjCubit>().goHome();
                      context
                          .read<HajjCubit>()
                          .changePage(1); // Go back to Hajj Page
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  // Text(
                  //   "Day $day Activities",
                  //   style: const TextStyle(
                  //     fontSize: 18,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),

                  Text(
                    HajjTexts.dayActivitiesTitle(lang, day),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // CONTENT
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: content.length,
                itemBuilder: (context, index) {
                  final item = content[index];

                  return Card(
                    child: ListTile(
                      title: Text(item["title"]!),
                      subtitle: Text(item["desc"]!),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  List<Map<String, String>> _getDayContent(int day, String lang) {
    if (day == 8) {
      return [
        {
          "title": lang == "bn"
              ? "ইহরাম পরিধান"
              : lang == "ar"
                  ? "الإحرام"
                  : "Ihram Preparation",
          "desc": "Details for Day 8 activity",
        },
      ];
    }

    if (day == 9) {
      return [
        {
          "title": "Arafah Day",
          "desc": "Stay at Arafah and Dua",
        },
      ];
    }

    return [
      {
        "title": "General Activity",
        "desc": "Default content",
      },
    ];
  }
}
