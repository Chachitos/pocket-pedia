import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocketpedia/styles/app_colors.dart';

ThemeData lightTheme = ThemeData(
    fontFamily: 'DMSans',
    colorScheme: ColorScheme.dark(
      surface: AppColors.white,
      primary: AppColors.teal,
      secondary: AppColors.yellow,
      tertiary: AppColors.oceanBlue,
      inversePrimary: AppColors.red,
      //Colors.grey.shade300,
    ));
