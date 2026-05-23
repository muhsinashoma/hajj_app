// //lib/features/hajj/presentation/pages/home/umrah_page.dart
// import 'package:flutter/material.dart';

// class UmrahPage extends StatelessWidget {
//   const UmrahPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final steps = [
//       "Ihram",
//       "Tawaf",
//       "Sa’i",
//       "Halq / Taqsir",
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Umrah Guide"),
//         backgroundColor: const Color(0xFF0F4C5C),
//       ),
//       body: ListView.builder(
//         padding: const EdgeInsets.all(16),
//         itemCount: steps.length,
//         itemBuilder: (context, index) {
//           return Card(
//             child: ListTile(
//               leading: Text("${index + 1}"),
//               title: Text(steps[index]),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }



// lib/features/hajj/presentation/pages/home/umrah_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/hajj/hajj_cubit.dart';

class UmrahPage extends StatelessWidget {
  const UmrahPage({super.key});

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
                "Umrah Guide",
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
              "Umrah Page",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}
