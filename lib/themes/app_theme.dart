import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marchic/themes/tokens.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: kPrimaryColor,
    textTheme: GoogleFonts.dmSansTextTheme().copyWith(
      titleLarge: const TextStyle(fontWeight: FontWeight.w600),
    ),
    scaffoldBackgroundColor: Colors.white,
  );
}
