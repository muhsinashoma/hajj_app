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
                    // child: ListTile(
                    //   onTap: () {
                    //     context.read<HajjCubit>().openHajjDay(
                    //           index + 8,
                    //         );
                    //   },
                    //   leading: CircleAvatar(
                    //     backgroundColor: const Color(0xFF0F4C5C),
                    //     child: Text(
                    //       "${index + 8}",
                    //       style: const TextStyle(color: Colors.white),
                    //     ),
                    //   ),
                    //   title: Text(days[index]),
                    //   subtitle: Text(
                    //     HajjTexts.tapForDetails(lang),
                    //   ),
                    // ),

                    child: ListTile(
                      onTap: () {
                        context.read<HajjCubit>().openHajjDay(index + 8);
                      },

                      leading: CircleAvatar(
                        backgroundColor: const Color(0xFF0F4C5C),
                        child: Text(
                          "${index + 8}",
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),

                      // 🟢 PRIMARY TEXT
                      title: Text(
                        days[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),

                      // 🟡 SUBTITLE (PRO STYLE)
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 4),

                          // Activity summary
                          // Text(
                          //   HajjTexts.hajjDaySummary(lang, index + 8),
                          //   style: const TextStyle(
                          //     fontWeight: FontWeight.w500,
                          //     color: Color.fromARGB(221, 144, 135, 135),
                          //   ),
                          //   maxLines: 2,
                          //   overflow: TextOverflow.ellipsis,
                          // ),

                          Text(
                            HajjTexts.hajjDaySummary(lang, index + 8),
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12, // 🔻 add smaller font
                              color: Color.fromARGB(221, 144, 135, 135),
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),

                          const SizedBox(height: 6),

                          // Tap for details (action style)
                          Row(
                            children: [
                              // Text(
                              //   HajjTexts.tapForDetails(lang),
                              //   style: const TextStyle(
                              //     fontSize: 12,
                              //     color: Colors.blue,
                              //     fontWeight: FontWeight.w500,
                              //   ),
                              // ),
                              Text(
                                HajjTexts.tapForDetails(lang),
                                style: const TextStyle(
                                  fontSize: 11, // 🔻 smaller
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 4),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                        ],
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
