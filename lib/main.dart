//STEP 7 — MAIN.DART

//Responsibility
// Starts app
// Injects Cubit
// Loads HomeScreen

//step # 1

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/hajj/presentation/cubit/hajj/hajj_cubit.dart';
import 'features/hajj/presentation/pages/home/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HajjCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const MainScreen(),
      ),
    );
  }
}
