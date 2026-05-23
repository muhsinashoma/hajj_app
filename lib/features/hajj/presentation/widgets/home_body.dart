// STEP 4 — HomeBody / HajjPage / UmrahPage / TenDaysPage

// lib/features/hajj/presentation/widgets/home_body.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/hajj/hajj_cubit.dart';
import '../cubit/hajj/hajj_state.dart';

import 'package:hajj_app/core/constants/app_strings.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HajjCubit, HajjState>(
      builder: (context, state) {
        final lang = state.language;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ===== WELCOME SECTION =====
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    HajjTexts.welcomeTitle(lang),
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    HajjTexts.welcomeSubtitle(lang),
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // ===== MENU LIST =====
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: state.homeItems.length,
                itemBuilder: (context, index) {
                  final item = state.homeItems[index];

                  return GestureDetector(
                    onTap: () {
                      // ✅ Cubit-based navigation
                      context.read<HajjCubit>().openPage(index + 1);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          // ===== ICON =====
                          Text(
                            item.icon,
                            style: const TextStyle(fontSize: 28),
                          ),

                          const SizedBox(width: 12),

                          // ===== TITLE & SUBTITLE =====
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  lang == "bn"
                                      ? item.titleBn
                                      : lang == "ar"
                                          ? item.titleAr
                                          : item.titleEn,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  HajjTexts.subtitle(lang),
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // ===== ARROW =====
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Colors.grey,
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
