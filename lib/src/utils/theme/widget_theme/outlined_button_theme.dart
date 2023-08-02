import 'package:flutter/material.dart';
import 'package:loginapp_flutter/src/constants/colors.dart';
import 'package:loginapp_flutter/src/constants/sizes.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._(); // To avoid instance creation

  /// Light theme
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: SecondaryColor,
      side: BorderSide(color: SecondaryColor),
      padding: EdgeInsets.symmetric(vertical: ButtonHeight),
    ),
  );

  /// Dark theme
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: WhiteColor,
      side: BorderSide(color: WhiteColor),
      padding: EdgeInsets.symmetric(vertical: ButtonHeight),
    ),
  );
}
