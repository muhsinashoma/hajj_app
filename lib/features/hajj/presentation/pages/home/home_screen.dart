// // // 📱 6. HOME PAGE (UI + API DATA)

// // 📱 HOME SCREEN

//step # 3 HomeScreen (ONLY Scaffold)

// lib/features/hajj/presentation/pages/home/home_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/hajj/hajj_cubit.dart';
import '../../cubit/hajj/hajj_state.dart';

//import '../../widgets/home_body.dart';
import '../../widgets/app_bottom_nav.dart';
import '../../widgets/language_dropdown.dart';

import 'package:hajj_app/core/constants/app_strings.dart';

class HomeScreen extends StatelessWidget {
  final Widget child;

  const HomeScreen({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HajjCubit, HajjState>(
      builder: (context, state) {
        final lang = state.language;

        return Directionality(
          textDirection: lang == "ar" ? TextDirection.rtl : TextDirection.ltr,
          child: Scaffold(
            backgroundColor: const Color(0xFFF8F8F8),

            // ✅ APP BAR
            appBar: AppBar(
              backgroundColor: const Color(0xFF0F4C5C),
              centerTitle: true,
              iconTheme: const IconThemeData(color: Colors.white),
              title: Text(
                HajjTexts.appTitle(lang),
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: LanguageDropdown(),
                ),
              ],
            ),

            // ✅ DYNAMIC BODY
            body: child,

            // ✅ BOTTOM NAV
            bottomNavigationBar: const AppBottomNav(),
          ),
        );
      },
    );
  }
}
