// // 📱 6. HOME PAGE (UI + API DATA)

// // 📍 features/hajj/presentation/pages/home/home_screen.dart

// 📱 HOME SCREEN
// 📍 features/hajj/presentation/pages/home/home_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/hajj/hajj_cubit.dart';
import '../../cubit/hajj/hajj_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // STEP 5 : REBUILD UI WHEN STATE CHANGES
    return BlocBuilder<HajjCubit, HajjState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xFFF8F8F8),

          // =========================
          // APP BAR
          // =========================
          appBar: AppBar(
            backgroundColor: const Color(0xFF0F4C5C),

            elevation: 0,

            centerTitle: true,

            title: Text(
              state.language == "bn" ? "হজ্জ অ্যাপ" : "Hajj App",
            ),

            // LANGUAGE DROPDOWN
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: DropdownButton<String>(
                  value: state.language,
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

         
         
          // =========================
          // BODY
          // =========================
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // =========================
                  // WELCOME TEXT
                  // =========================
                  Text(
                    state.language == "bn"
                        ? "আসসালামু আলাইকুম 🌙"
                        : "Assalamu Alaikum 🌙",
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    state.language == "bn"
                        ? "আপনার হজ্জ ও উমরাহ যাত্রায় স্বাগতম"
                        : "Welcome to your Hajj & Umrah journey",
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),

                  const SizedBox(height: 24),

                  // =========================
                  // HAJJ + UMRAH LIST VIEW
                  // =========================
                  ListView.builder(
                    itemCount: state.homeItems.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final item = state.homeItems[index];

                      return Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 16,
                          ),

                          // LEFT ICON
                          leading: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: const Color(0xFF0F4C5C).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Center(
                              child: Text(
                                item.icon,
                                style: const TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),

                          // TITLE + SUBTITLE
                          title: Text(
                            state.language == "bn"
                                ? item.titleBn
                                : item.titleEn,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(
                              state.language == "bn"
                                  ? "বিস্তারিত দেখতে ক্লিক করুন"
                                  : "Tap to explore details",
                              style: TextStyle(
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ),

                          // RIGHT ARROW
                          trailing: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 18,
                            color: Color(0xFF0F4C5C),
                          ),

                          // CLICK EVENT
                          onTap: () {
                            // FUTURE NAVIGATION

                            /*
                            if(index == 0){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => HajjScreen(),
                                ),
                              );
                            }

                            if(index == 1){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => UmrahScreen(),
                                ),
                              );
                            }
                            */
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),

          // =========================
          // BOTTOM NAVIGATION BAR
          // =========================
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: state.selectedIndex,
            selectedItemColor: const Color(0xFF0F4C5C),
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              // STEP 6 : UPDATE SELECTED INDEX

              context.read<HajjCubit>().changeBottomIndex(index);
            },
            items: state.bottomItems.map((item) {
              return BottomNavigationBarItem(
                icon: Text(
                  item.icon,
                  style: const TextStyle(fontSize: 22),
                ),
                label: state.language == "bn" ? item.titleBn : item.titleEn,
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
