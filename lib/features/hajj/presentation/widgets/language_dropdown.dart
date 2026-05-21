// lib/features/hajj/presentation/widgets/language_dropdown.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/hajj/hajj_cubit.dart';
import '../cubit/hajj/hajj_state.dart';

class LanguageDropdown extends StatelessWidget {
  const LanguageDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HajjCubit, HajjState>(
      builder: (context, state) {
        final lang = state.language;

        String label = lang == "bn"
            ? "BN"
            : lang == "ar"
                ? "AR"
                : "EN";

        return Padding(
          padding: const EdgeInsets.only(right: 12),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: lang,
              dropdownColor: Colors.white,
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              selectedItemBuilder: (context) {
                return [
                  Text("🌐 $label"),
                  Text("🌐 $label"),
                  Text("🌐 $label"),
                ];
              },
              items: [
                DropdownMenuItem(
                  value: "bn",
                  child: Text(
                    "বাংলা",
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                DropdownMenuItem(
                  value: "en",
                  child: Text(
                    "English",
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                DropdownMenuItem(
                  value: "ar",
                  child: Text(
                    "العربية",
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ],
              onChanged: (value) {
                if (value != null) {
                  context.read<HajjCubit>().changeLanguage(value);
                }
              },
            ),
          ),
        );
      },
    );
  }
}
