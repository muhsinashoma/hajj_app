
// lib/features/hajj/presentation/pages/home/ten_days_zil_hajj.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/hajj/hajj_cubit.dart';

class TenDaysZilHajjPage extends StatelessWidget {
  const TenDaysZilHajjPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          color: Colors.white,
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  context.read<HajjCubit>().goHome();
                },
                icon: const Icon(Icons.arrow_back),
              ),
              const SizedBox(width: 8),
              const Text(
                "10 Days of Zil Hajj",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const Expanded(
          child: Center(
            child: Text(
              "10 Days Zil Hajj Page",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}
