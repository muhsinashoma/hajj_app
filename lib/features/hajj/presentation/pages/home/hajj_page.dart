// lib/features/hajj/presentation/pages/home/hajj_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/hajj/hajj_cubit.dart';
import '../../cubit/hajj/hajj_state.dart';
import 'package:hajj_app/core/constants/app_strings.dart';

class HajjPage extends StatelessWidget {
  const HajjPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HajjCubit, HajjState>(
      builder: (context, state) {
        final lang = state.language;

        final days = lang == "bn"
            ? [
                "৮ জিলহজ্জ",
                "৯ জিলহজ্জ",
                "১০ জিলহজ্জ",
                "১১ জিলহজ্জ",
                "১২ জিলহজ্জ",
                "১৩ জিলহজ্জ",
              ]
            : lang == "ar"
                ? [
                    "٨ ذو الحجة",
                    "٩ ذو الحجة",
                    "١٠ ذو الحجة",
                    "١١ ذو الحجة",
                    "١٢ ذو الحجة",
                    "١٣ ذو الحجة",
                  ]
                : [
                    "8 Dhu al-Hijjah",
                    "9 Dhu al-Hijjah",
                    "10 Dhu al-Hijjah",
                    "11 Dhu al-Hijjah",
                    "12 Dhu al-Hijjah",
                    "13 Dhu al-Hijjah",
                  ];

        return Column(
          children: [
            // ✅ HEADER
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: Colors.white,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      context.read<HajjCubit>().goHome();
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    HajjTexts.hajjGuideTitle(lang),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // ✅ CONTENT
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: days.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: const Color(0xFF0F4C5C),
                        child: Text(
                          "${index + 8}",
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      title: Text(days[index]),
                      subtitle: Text(
                        HajjTexts.tapForDetails(lang),
                      ),
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
}
