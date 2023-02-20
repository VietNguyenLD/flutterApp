import 'package:flutter/material.dart';

const kColorPrimary = Color(0xFF8E97FD);

class PrimaryFont {
  static TextStyle medium(double size) {
    return TextStyle(
        fontFamily: 'HelveticaNeue',
        fontSize: size,
        fontWeight: FontWeight.w500);
  }

  static TextStyle thin(double size) {
    return TextStyle(
        fontFamily: 'HelveticaNeue',
        fontSize: size,
        fontWeight: FontWeight.w100);
  }
}
