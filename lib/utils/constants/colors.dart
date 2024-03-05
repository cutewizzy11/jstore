import 'package:flutter/material.dart';

class FColors {
  FColors._();
  
  // App Basic Colors
  static const Color primary = Color(0xffff0000);
  static const Color secondary = Color(0xfffc6edb);
  static const Color accent = Color(0xfff6e1e1);

  // Gradient Colors
  static const Gradient linearGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.507, -0.507),
      colors: [
      Color(0xff8b009b),
      Color(0xffc403cb),
      Color(0xfff101ff),
      ],
  );

  //Text colors
  static const Color textPrimary = Color(0xff333626);
  static const Color textSecondary = Color(0xff657275);
  static const Color textWhite = Colors.white;

  //Background colors
  static const Color light = Color(0xffffffff);
  static const Color dark = Color(0xff272727);
  static const Color primaryBackground = Color(0xffffffff);

  //Background container colors
  static const Color lightContainer = Color(0xffffffff);
  static Color darkContainer = FColors.light.withOpacity(0.1);

  //Button colors
  static const Color buttonPrimary = Color(0xffff0000);
  static const Color buttonSecondary = Color(0xff504f4f);
  static const Color buttonDisabled = Color(0xffc4c4c4);

  //Border colors
  static const Color borderPrimary = Color(0xffffffff);
  static const Color borderSecondary = Color(0xffd5d4d4);

  //Error and Validation colors
  static const Color error = Color(0xffff0000);
  static const Color success = Color(0xff00b900);
  static const Color warning = Color(0xfff57c00);
  static const Color info = Color(0xff0563b6);

  //Neutral colors
  static const Color black = Color(0xff000000);
  static const Color darkerGrey = Color(0xff2d2d2d);
  static const Color darkGrey = Color(0xff595959);
  static const Color grey = Color(0xff868686);
  static const Color softGrey = Color(0xffbebebe);
  static const Color lightGrey = Color(0xffeeeeee);
  static const Color white = Color(0xffffffff);
}