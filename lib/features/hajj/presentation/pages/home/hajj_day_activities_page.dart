// // lib/features/hajj/presentation/pages/home/hajj_day_activities_page.dart

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:hajj_app/core/constants/app_strings.dart';
// import 'package:hajj_app/core/constants/hajj_day_content.dart';

// import '../../cubit/hajj/hajj_cubit.dart';
// import '../../cubit/hajj/hajj_state.dart';

// class HajjDayActivitiesPage extends StatelessWidget {
//   const HajjDayActivitiesPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<HajjCubit, HajjState>(
//       builder: (context, state) {
//         final day = state.selectedDay;
//         final lang = state.language;

//         if (day == null) {
//           return const Scaffold(
//             body: Center(
//               child: Text("No day selected"),
//             ),
//           );
//         }

//         // ✅ GET DATA FROM CONSTANT FILE

//         final dayData = HajjDayContent.getData(lang)[day];

//         return Scaffold(
//           body: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // ✅ HEADER
//               Container(
//                 width: double.infinity,
//                 padding: const EdgeInsets.all(16),
//                 color: Colors.white,
//                 child: SafeArea(
//                   bottom: false,
//                   child: Row(
//                     children: [
//                       IconButton(
//                         onPressed: () {
//                           context.read<HajjCubit>().changePage(1);
//                         },
//                         icon: const Icon(Icons.arrow_back),
//                       ),

//                       const SizedBox(width: 8),

//                       // ✅ TITLE
//                       Text(
//                         HajjTexts.dayActivitiesTitle(lang, day),
//                         style: const TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),

//               // ✅ CONTENT

//               Expanded(
//                 child: SingleChildScrollView(
//                   padding: const EdgeInsets.all(16),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       /// Day Title
//                       Text(
//                         dayData?["title"] ?? "",
//                         style: const TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),

//                       const SizedBox(height: 6),

//                       /// Subtitle
//                       if (dayData?["subtitle"] != null)
//                         Text(
//                           dayData!["subtitle"],
//                           style: const TextStyle(
//                             fontSize: 16,
//                             color: Colors.grey,
//                             fontStyle: FontStyle.italic,
//                           ),
//                         ),

//                       const SizedBox(height: 24),

//                       /// Sections
//                       ...List.generate(
//                         (dayData?["sections"] as List?)?.length ?? 0,
//                         (index) {
//                           final section = dayData!["sections"][index];

//                           return Padding(
//                             padding: const EdgeInsets.only(bottom: 24),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 /// Heading
//                                 Text(
//                                   section["heading"],
//                                   style: const TextStyle(
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.teal,
//                                   ),
//                                 ),

//                                 const SizedBox(height: 10),

//                                 /// Content
//                                 Text(
//                                   section["content"],
//                                   style: const TextStyle(
//                                     fontSize: 16,
//                                     height: 1.7,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           );
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }



// lib/features/hajj/presentation/pages/home/hajj_day_activities_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hajj_app/core/constants/app_strings.dart';
import 'package:hajj_app/core/constants/hajj_day_content.dart';

import '../../cubit/hajj/hajj_cubit.dart';
import '../../cubit/hajj/hajj_state.dart';
import '../../widgets/day_content_view.dart';

class HajjDayActivitiesPage extends StatelessWidget {
  const HajjDayActivitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HajjCubit, HajjState>(
      builder: (context, state) {
        final day = state.selectedDay;
        final lang = state.language;

        if (day == null) {
          return Scaffold(
            body: Center(
              child: Text(
                "No day selected",
                style: TextStyle(color: Colors.grey.shade600),
              ),
            ),
          );
        }

        // Falls back to Bangla automatically when a translation is
        // missing for the selected day/language — see HajjDayContent.getData.
        final dayData = HajjDayContent.getData(lang)[day];

        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Header(
                title: HajjTexts.dayActivitiesTitle(lang, day),
                onBack: () => context.read<HajjCubit>().changePage(1),
              ),
              Expanded(
                child: DayContentView(data: dayData, lang: lang),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _Header extends StatelessWidget {
  final String title;
  final VoidCallback onBack;

  const _Header({required this.title, required this.onBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: SafeArea(
        bottom: false,
        child: Row(
          children: [
            IconButton(
              onPressed: onBack,
              icon: const Icon(Icons.arrow_back),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
