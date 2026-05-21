// // 📱 6. HOME PAGE (UI + API DATA)

// 📱 HOME SCREEN
//lib/features/hajj/presentation/pages/home/home_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/hajj/hajj_cubit.dart';
import '../../cubit/hajj/hajj_state.dart';
import 'package:hajj_app/core/constants/app_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HajjCubit, HajjState>(
      builder: (context, state) {
        final lang = state.language;
        final isArabic = lang == "ar";

        return Directionality(
          textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
          child: Scaffold(
            backgroundColor: const Color(0xFFF8F8F8),

            // ================= APP BAR =================
            appBar: AppBar(
              backgroundColor: const Color(0xFF0F4C5C),
              centerTitle: true,
              title: Text(HajjTexts.appTitle(lang)),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: DropdownButton<String>(
                    value: lang,
                    underline: const SizedBox(),
                    dropdownColor: Colors.white,
                    icon: const Icon(
                      Icons.language,
                      color: Colors.white,
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: "bn",
                        child: Text("বাংলা"),
                      ),
                      DropdownMenuItem(
                        value: "en",
                        child: Text("English"),
                      ),
                      DropdownMenuItem(
                        value: "ar",
                        child: Text("العربية"),
                      ),
                    ],
                    onChanged: (value) {
                      if (value != null) {
                        context.read<HajjCubit>().changeLanguage(value);
                      }
                    },
                  ),
                ),
              ],
            ),

            // ================= BODY =================
            body: Column(
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

                // ===== LIST =====
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: state.homeItems.length,
                    itemBuilder: (context, index) {
                      final item = state.homeItems[index];

                      return GestureDetector(
                        onTap: () {
                          // ✅ ONLY STATE CHANGE (CUBIT CONTROL)
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
                              Text(item.icon,
                                  style: const TextStyle(fontSize: 28)),
                              const SizedBox(width: 12),
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
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
            ),

            // ================= BOTTOM NAV =================
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: state.selectedIndex,
              selectedItemColor: const Color(0xFF0F4C5C),
              unselectedItemColor: Colors.grey,
              onTap: (index) {
                context.read<HajjCubit>().changeBottomIndex(index);
              },
              items: state.bottomItems.map((item) {
                return BottomNavigationBarItem(
                  icon: Text(item.icon),
                  label: lang == "bn"
                      ? item.titleBn
                      : lang == "ar"
                          ? item.titleAr
                          : item.titleEn,
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
