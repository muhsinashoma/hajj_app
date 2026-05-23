//step # 2 MainScreen (ROUTER)

// lib/features/hajj/presentation/pages/home/main_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/home_body.dart';
import 'home_screen.dart';
import 'hajj_page.dart';
import 'umrah_page.dart';
import 'ten_days_zil_hajj.dart';

import '../../cubit/hajj/hajj_cubit.dart';
import '../../cubit/hajj/hajj_state.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HajjCubit, HajjState>(
      builder: (context, state) {
        return HomeScreen(
          child: switch (state.pageIndex) {
            1 => const HajjPage(),
            2 => const UmrahPage(),
            3 => const TenDaysZilHajjPage(),
            _ => const HomeBody(),
          },
        );
      },
    );
  }
}
