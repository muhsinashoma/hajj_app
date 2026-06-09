// lib/features/hajj/presentation/pages/home/hajj_day_activities_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hajj_app/core/constants/app_strings.dart';
import 'package:hajj_app/core/constants/hajj_day_content.dart';

import '../../cubit/hajj/hajj_cubit.dart';
import '../../cubit/hajj/hajj_state.dart';

class HajjDayActivitiesPage extends StatelessWidget {
  const HajjDayActivitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HajjCubit, HajjState>(
      builder: (context, state) {
        final day = state.selectedDay;
        final lang = state.language;

        if (day == null) {
          return const Scaffold(
            body: Center(
              child: Text("No day selected"),
            ),
          );
        }

        // ✅ GET DATA FROM CONSTANT FILE
       

        final dayData = HajjDayContent.getData(lang)[day];

        return Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ✅ HEADER
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                color: Colors.white,
                child: SafeArea(
                  bottom: false,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          context.read<HajjCubit>().changePage(1);
                        },
                        icon: const Icon(Icons.arrow_back),
                      ),

                      const SizedBox(width: 8),

                      // ✅ TITLE
                      Text(
                        HajjTexts.dayActivitiesTitle(lang, day),
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // ✅ CONTENT
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 🟢 DAY TITLE
                      Text(
                        dayData?["title"] ?? "",
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 16),

                      // 🟡 DAY CONTENT
                      Text(
                        dayData?["content"] ?? "",
                        style: const TextStyle(
                          fontSize: 16,
                          height: 1.7,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
