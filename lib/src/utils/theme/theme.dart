import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginapp_flutter/src/utils/theme/widget_theme/elevated_button_theme.dart';
import 'package:loginapp_flutter/src/utils/theme/widget_theme/outlined_button_theme.dart';
import 'package:loginapp_flutter/src/utils/theme/widget_theme/text_theme.dart';

class AppTheme {
  AppTheme._(); // This is Private

  /// Light Theme
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: TTextTheme.lightTextTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme);

  /// Dark Theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
  );
}
