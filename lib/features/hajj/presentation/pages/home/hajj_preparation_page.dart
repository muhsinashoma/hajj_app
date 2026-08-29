// lib/features/hajj/presentation/pages/home/hajj_preparation_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hajj_app/core/constants/hajj_day_content.dart';

import '../../cubit/hajj/hajj_cubit.dart';
import '../../cubit/hajj/hajj_state.dart';
import '../../widgets/day_content_view.dart';

class HajjPreparationPage extends StatelessWidget {
  const HajjPreparationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HajjCubit, HajjState>(
      builder: (context, state) {
        final lang = state.language;
        final data = HajjDayContent.getHajjPreparationData(lang);

        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                color: Colors.white,
                child: SafeArea(
                  bottom: false,
                  child: Text(
                    data["title"] ?? "",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(child: DayContentView(data: data, lang: lang)),
            ],
          ),
        );
      },
    );
  }
}
