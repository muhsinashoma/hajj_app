//STEP 7 — MAIN.DART

//Responsibility
// Starts app
// Injects Cubit
// Loads HomeScreen

//STEP 1

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/hajj/presentation/cubit/hajj/hajj_cubit.dart';
import 'features/hajj/presentation/pages/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HajjCubit(), //STEP 2: PROVIDE CUBIT TO APP
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
