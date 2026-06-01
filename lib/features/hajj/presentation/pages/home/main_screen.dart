import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/home_body.dart';
import 'home_screen.dart';
import 'hajj_page.dart';
import 'umrah_page.dart';
import 'ten_days_zil_hajj.dart';
import 'hajj_day_activities_page.dart';

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
          case 1:
            page = const HajjPage();
            break;
          case 2:
            page = const UmrahPage();
            break;
          case 3:
            page = const TenDaysZilHajjPage();
            break;
          case 4:
            page = const HajjDayActivitiesPage();
            break;
          default:
            page = const HomeBody();
        }

        return HomeScreen(child: page);
      },
    );
  }
}
