// lib/features/hajj/presentation/pages/home/hajj_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/hajj/hajj_cubit.dart';

class HajjPage extends StatelessWidget {
  const HajjPage({super.key});

  @override
  Widget build(BuildContext context) {
    final days = [
      "8 Dhu al-Hijjah",
      "9 Dhu al-Hijjah",
      "10 Dhu al-Hijjah",
      "11 Dhu al-Hijjah",
      "12 Dhu al-Hijjah",
      "13 Dhu al-Hijjah",
    ];

    return Column(
      children: [
        // ✅ PAGE HEADER
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
                "Hajj Guide",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),

        // ✅ PAGE CONTENT
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: days.length,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.only(bottom: 12),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: const Color(0xFF0F4C5C),
                    child: Text(
                      "${index + 8}",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text(days[index]),
                  subtitle: const Text("Tap for details"),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
