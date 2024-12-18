import 'package:flutter/material.dart';
import 'package:pocketpedia/styles/color/app_colors.dart';

ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(
  surface: const Color.fromARGB(255, 17, 17, 17), //Colors.grey.shade900,
  primary: Colors.grey.shade600,
  secondary: Colors.grey.shade700,
  tertiary: const Color.fromARGB(255, 24, 25, 26),
  inversePrimary: AppColors.teal,
  //Colors.grey.shade300,
));
