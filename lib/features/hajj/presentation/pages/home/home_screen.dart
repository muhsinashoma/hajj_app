// 📱 6. HOME PAGE (UI + API DATA)

// 📍 features/hajj/presentation/pages/home/home_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/hajj/hajj_cubit.dart';
import '../../cubit/hajj/hajj_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //STEP 5 : USE BLOC BUILDER TO REBUILD UI BASED ON CUBIT STATE
    return BlocBuilder<HajjCubit, HajjState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Hajj App"),
          ),

          // HOME LIST
          body: ListView.builder(
            itemCount: state.homeItems.length,
            itemBuilder: (context, index) {
              final item = state.homeItems[index];

              return Card(
                margin: const EdgeInsets.all(10),
                child: ListTile(
                  leading: Text(
                    item.icon,
                    style: const TextStyle(fontSize: 24),
                  ),
                  title: Text(item.title),
                ),
              );
            },
          ),

          // BOTTOM BAR
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: state.selectedIndex,
            onTap: (index) {
              context
                  .read<HajjCubit>()
                  .changeBottomIndex(index); //STEP 6: UPDATE INDEX ON TAP
            },
            items: state.bottomItems.map((item) {
              return BottomNavigationBarItem(
                icon: Text(item.icon),
                label: item.title,
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
