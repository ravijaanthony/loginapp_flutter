import 'package:flutter/material.dart';
import 'package:loginapp_flutter/src/constants/colors.dart';
import 'package:loginapp_flutter/src/constants/sizes.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._(); // To avoid instance creation

  /// Light theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(),
    foregroundColor: WhiteColor,
    backgroundColor: SecondaryColor,
    side: BorderSide(color: SecondaryColor),
    padding: EdgeInsets.symmetric(vertical: ButtonHeight),
  ));

  /// Dark theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(),
    foregroundColor: SecondaryColor,
    backgroundColor: WhiteColor,
    side: BorderSide(color: SecondaryColor),
    padding: EdgeInsets.symmetric(vertical: ButtonHeight),
  ));
}
