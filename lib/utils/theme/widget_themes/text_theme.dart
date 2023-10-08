import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  static TextTheme lightTheme = TextTheme(
    headline2: GoogleFonts.poppins(
      color: Colors.black,
    ),
    subtitle2: GoogleFonts.poppins(
      color: Colors.black54,
      fontSize: 24,
    ),
  );
  static TextTheme darkTheme = TextTheme(
    headline2: GoogleFonts.poppins(
      color: Colors.white,
    ),
    subtitle2: GoogleFonts.poppins(
      color: Colors.white70,
      fontSize: 24,
    ),);

}