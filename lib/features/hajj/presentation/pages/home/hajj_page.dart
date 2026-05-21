//lib/features/hajj/presentation/pages/home/hajj_page.dart

import 'package:flutter/material.dart';

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

    return Scaffold(
      appBar: AppBar(
        title: const Text("Hajj Guide"),
        backgroundColor: const Color(0xFF0F4C5C),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: days.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: const Color(0xFF0F4C5C),
                child: Text("${index + 8}",
                    style: const TextStyle(color: Colors.white)),
              ),
              title: Text(days[index]),
              subtitle: const Text("Tap for details"),
            ),
          );
        },
      ),
    );
  }
}
