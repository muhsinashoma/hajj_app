//lib/features/hajj/presentation/pages/home/umrah_page.dart
import 'package:flutter/material.dart';

class UmrahPage extends StatelessWidget {
  const UmrahPage({super.key});

  @override
  Widget build(BuildContext context) {
    final steps = [
      "Ihram",
      "Tawaf",
      "Sa’i",
      "Halq / Taqsir",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Umrah Guide"),
        backgroundColor: const Color(0xFF0F4C5C),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: steps.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Text("${index + 1}"),
              title: Text(steps[index]),
            ),
          );
        },
      ),
    );
  }
}
