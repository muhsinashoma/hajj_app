//lib/features/hajj/presentation/widgets/app_bottom_nav.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/hajj/hajj_cubit.dart';
import '../cubit/hajj/hajj_state.dart';

class AppBottomNav extends StatelessWidget {
  const AppBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HajjCubit, HajjState>(
      builder: (context, state) {
        final lang = state.language;

        return BottomNavigationBar(
          currentIndex: state.selectedIndex,
          selectedItemColor: const Color(0xFF0F4C5C),
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            context.read<HajjCubit>().changeBottomIndex(index);
          },
          items: state.bottomItems.map((item) {
            return BottomNavigationBarItem(
              icon: Text(
                item.icon,
                style: const TextStyle(fontSize: 20),
              ),
              label: lang == "bn"
                  ? item.titleBn
                  : lang == "ar"
                      ? item.titleAr
                      : item.titleEn,
            );
          }).toList(),
        );
      },
    );
  }
}
