import 'package:flutter/material.dart';

class ColorResources {
  static const Color primaryColor = Color(0xFF4FA386);
  static const Color secondaryColor = Color(0xFFFFEFD6);
  static const Color accentColor = Color(0xFFFF9999);
  static const Color transparentColor = Colors.transparent;
  static const Color whiteColor = Colors.white;
  static const Color orangeColor = Color(0XFFFFEFD6);
  static const Color blackColor = Colors.black;

//todo page colors
  static const Color todoPurpleColor = Color(0xFFA69FF0);
  static const Color todoPinkColor = Color(0xFFE2A7A7);
  static const Color todoBlueColor = Color(0xFF8FD5E5);
  static const Color todoOrangeColor = Color(0xFFEBB762);
  static const Color todoSageColor = Color(0xFFCBD690);
  static const Color todoGriyyColor = Color(0xFFE3E58F);
  static const Color todoGreenColor = Color(0xFF8FE59D);

//appbar colors theme
  static final light = ThemeData(
      primaryColor: ColorResources.primaryColor, brightness: Brightness.light);

  static final dark = ThemeData(
      primaryColor: ColorResources.todoGreenColor, brightness: Brightness.dark);
}
