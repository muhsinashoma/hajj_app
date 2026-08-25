//lib/features/hajj/presentation/pages/home/main_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hajj_app/core/constants/app_strings.dart';

import '../../widgets/home_body.dart';
import 'home_screen.dart';
import 'hajj_page.dart';
import 'umrah_page.dart';
import 'ten_days_zil_hajj.dart';
import 'hajj_day_activities_page.dart';
import 'safar_page.dart';
import 'coming_soon_page.dart';

import '../../cubit/hajj/hajj_cubit.dart';
import '../../cubit/hajj/hajj_state.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HajjCubit, HajjState>(
      builder: (context, state) {
        final pageIndex = state.pageIndex;

        Widget page;

        switch (pageIndex) {
          case AppPages.hajj:
            page = const HajjPage();
            break;
          case AppPages.umrah:
            page = const UmrahPage();
            break;
          case AppPages.tenDays:
            page = const TenDaysZilHajjPage();
            break;
          case AppPages.hajjDay:
            page = const HajjDayActivitiesPage();
            break;
          case AppPages.safar:
            page = const SafarPage();
            break;
          case AppPages.hajjPreparation:
            page = const ComingSoonPage(title: "Hajj Preparation");
            break;
          case AppPages.essentials:
            page = const ComingSoonPage(title: "Essentials");
            break;
          case AppPages.makkahActivities:
            page = const ComingSoonPage(title: "Makkah Activities");
            break;
          case AppPages.madinahActivities:
            page = const ComingSoonPage(title: "Madinah Activities");
            break;
          default:
            page = const HomeBody();
        }

        return HomeScreen(child: page);
      },
    );
  }
}
