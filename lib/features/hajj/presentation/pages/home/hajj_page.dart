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
                "৮ ই জিলহজ্জ",
                "৯ ই জিলহজ্জ",
                "১০ ই জিলহজ্জ",
                "১১ ই জিলহজ্জ",
                "১২ ই জিলহজ্জ",
                "১৩ ই জিলহজ্জ",
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
              // padding: const EdgeInsets.all(16),
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 4,
              ),
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
                // padding: const EdgeInsets.all(16),
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                itemCount: days.length,
                itemBuilder: (context, index) {
                  //main card

                  return Card(
                    // margin: const EdgeInsets.only(bottom: 12),
                    margin: const EdgeInsets.symmetric(vertical: 1),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 1,
                      ),

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
                          Row(
                            children: [
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

                  //It's working

                  // return Card(
                  //   margin: const EdgeInsets.symmetric(
                  //     vertical: 6,
                  //     horizontal: 2,
                  //   ),
                  //   elevation: 1.2,
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(12),
                  //   ),
                  //   child: ListTile(
                  //     contentPadding: const EdgeInsets.symmetric(
                  //       horizontal: 14,
                  //       vertical: 8, // ✅ consistent top-bottom spacing
                  //     ),
                  //     onTap: () {
                  //       context.read<HajjCubit>().openHajjDay(index + 8);
                  //     },
                  //     leading: CircleAvatar(
                  //       radius: 18,
                  //       backgroundColor: const Color(0xFF0F4C5C),
                  //       child: Text(
                  //         "${index + 8}",
                  //         style: const TextStyle(
                  //           color: Colors.white,
                  //           fontWeight: FontWeight.w600,
                  //           fontSize: 13, // ✅ standard font
                  //         ),
                  //       ),
                  //     ),
                  //     title: Text(
                  //       days[index],
                  //       style: const TextStyle(
                  //         fontWeight: FontWeight.w600,
                  //         fontSize: 14, // ✅ standard readable
                  //         height: 1.2,
                  //       ),
                  //     ),
                  //     subtitle: Padding(
                  //       padding: const EdgeInsets.only(top: 4),
                  //       child: Row(
                  //         children: [
                  //           Expanded(
                  //             child: Text(
                  //               HajjTexts.hajjDaySummary(lang, index + 8),
                  //               style: const TextStyle(
                  //                 fontSize: 12, // ✅ standard font
                  //                 color: Colors.black54,
                  //                 height: 1.3,
                  //               ),
                  //               maxLines: 1,
                  //               overflow: TextOverflow.ellipsis,
                  //             ),
                  //           ),
                  //           const SizedBox(width: 8),
                  //           Text(
                  //             HajjTexts.tapForDetails(lang),
                  //             style: const TextStyle(
                  //               fontSize: 11,
                  //               color: Colors.blue,
                  //               fontWeight: FontWeight.w500,
                  //             ),
                  //           ),
                  //           const SizedBox(width: 4),
                  //           const Icon(
                  //             Icons.arrow_forward_ios,
                  //             size: 12,
                  //             color: Colors.blue,
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // );

                  // return Card(
                  //   margin: const EdgeInsets.symmetric(
                  //       vertical: 3), // ✅ reduced gap
                  //   elevation: 1,
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   child: ListTile(
                  //     dense: true,
                  //     visualDensity: const VisualDensity(
                  //       vertical: -1, // ✅ reduces height slightly (important)
                  //     ),
                  //     contentPadding: const EdgeInsets.symmetric(
                  //       horizontal: 14,
                  //       vertical: 4, // ✅ compact height
                  //     ),
                  //     onTap: () {
                  //       context.read<HajjCubit>().openHajjDay(index + 8);
                  //     },
                  //     leading: CircleAvatar(
                  //       radius: 16, // ✅ slightly smaller but readable
                  //       backgroundColor: const Color(0xFF0F4C5C),
                  //       child: Text(
                  //         "${index + 8}",
                  //         style: const TextStyle(
                  //           color: Colors.white,
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 12,
                  //         ),
                  //       ),
                  //     ),
                  //     title: Text(
                  //       days[index],
                  //       style: const TextStyle(
                  //         fontWeight: FontWeight.w600,
                  //         fontSize: 13,
                  //       ),
                  //     ),
                  //     subtitle: Padding(
                  //       padding: const EdgeInsets.only(top: 2),
                  //       child: Row(
                  //         children: [
                  //           Expanded(
                  //             child: Text(
                  //               HajjTexts.hajjDaySummary(lang, index + 8),
                  //               style: const TextStyle(
                  //                 fontSize: 11.5,
                  //                 color: Colors.black54,
                  //               ),
                  //               maxLines: 1,
                  //               overflow: TextOverflow.ellipsis,
                  //             ),
                  //           ),
                  //           const SizedBox(width: 6),
                  //           Text(
                  //             HajjTexts.tapForDetails(lang),
                  //             style: const TextStyle(
                  //               fontSize: 10,
                  //               color: Colors.blue,
                  //               fontWeight: FontWeight.w500,
                  //             ),
                  //           ),
                  //           const SizedBox(width: 3),
                  //           const Icon(
                  //             Icons.arrow_forward_ios,
                  //             size: 11,
                  //             color: Colors.blue,
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
