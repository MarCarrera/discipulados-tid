
import 'package:flutter/material.dart';

class Constants {
  //COLORS
  static Color get backgrondColor => const Color.fromARGB(255, 255, 255, 255);
  static Color get primaryColor => const Color(0xFF001B48);
  static Color get secondColor => const Color(0xFF004581);
  static Color get letterColor => const Color(0xFF018ABD);
  static Color get cardColor => const Color.fromARGB(255, 225, 225, 225);
  static Color get grayColor => const Color.fromARGB(255, 172, 172, 172);

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
