// //views/home/home_screen.dart

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../cubit/hajj/hajj_cubit.dart';
// import '../../cubit/hajj/hajj_state.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Hajj App Cubit"),
//       ),
//       body: BlocBuilder<HajjCubit, HajjState>(
//         builder: (context, state) {
//           if (state is HajjLoading) {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           }

//           if (state is HajjLoaded) {
//             return ListView.builder(
//               itemCount: state.packages.length,
//               itemBuilder: (context, index) {
//                 final item = state.packages[index];

//                 return Card(
//                   margin: const EdgeInsets.all(10),
//                   child: ListTile(
//                     title: Text(item.title),
//                     leading: CircleAvatar(
//                       child: Text(item.id.toString()),
//                     ),
//                   ),
//                 );
//               },
//             );
//           }

//           if (state is HajjError) {
//             return Center(
//               child: Text(state.message),
//             );
//           }

//           return const SizedBox();
//         },
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/hajj/hajj_cubit.dart';
import '../../cubit/hajj/hajj_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hajj App"),
      ),
      body: BlocBuilder<HajjCubit, HajjState>(
        builder: (context, state) {
          if (state is HajjLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is HajjLoaded) {
            return Center(
              child: Text(
                state.data.toString(),
                style: const TextStyle(fontSize: 18),
              ),
            );
          }

          if (state is HajjError) {
            return Center(
              child: Text(state.message),
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}
