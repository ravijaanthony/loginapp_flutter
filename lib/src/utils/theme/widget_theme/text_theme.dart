import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  /// Light theme
  static TextTheme lightTextTheme = TextTheme(
    headlineMedium: GoogleFonts.montserrat(color: Colors.black87),
    titleSmall: GoogleFonts.poppins(color: Colors.black54, fontSize: 24),
  );

  /// Dark theme
  static TextTheme darkTextTheme = TextTheme(
    headlineMedium: GoogleFonts.montserrat(color: Colors.white70),
    titleSmall: GoogleFonts.poppins(color: Colors.white60, fontSize: 24),
  );
}
