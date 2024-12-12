import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appTheme = ThemeData(
  primaryColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    
    displayLarge: GoogleFonts.dmSans(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: const Color.fromARGB(255, 28, 28, 28),
    ),
    
    titleMedium: GoogleFonts.dmSans(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.black87,
    ),
    
    bodyMedium: GoogleFonts.dmSans(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    
    bodySmall: GoogleFonts.dmSans(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Colors.grey[700],
    ),
    
    labelLarge: GoogleFonts.dmSans(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    
    labelSmall: GoogleFonts.dmSans(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: Colors.grey[600],
    ),
  ),
);








