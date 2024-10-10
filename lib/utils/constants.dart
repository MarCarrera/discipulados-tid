
import 'package:flutter/material.dart';

class Constants {
  //COLORS
  static Color get backgrondColor => const Color(0xFFF6F6F6);
  static Color get primaryColor => const Color(0xFF001B48);
  static Color get secondColor => const Color(0xFF004581);
  static Color get letterColor => const Color(0xFF018ABD);
  static Color get cardColor => const Color(0xFFD9D9D9);

  //SIZE
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getFontSize(BuildContext context) {
    return getScreenHeight(context) * 0.02;
  }
}
