import 'package:flutter/material.dart';

abstract class ThemeTextStyle {
  static const TextStyle headerText = TextStyle(
      fontFamily: 'Balsamiq',
      color: Colors.white,
      fontSize: 40,
      height: 0.5,
      fontWeight: FontWeight.w600);

  static const TextStyle bodyText = TextStyle(
      fontFamily: 'Balsamiq',
      color: Colors.black,
      fontSize: 22,
      height: 0.5,
      fontWeight: FontWeight.w400);

  static const TextStyle underBodyText = TextStyle(
      fontFamily: 'Balsamiq',
      color: Colors.white,
      decoration: TextDecoration.underline,
      fontSize: 18,
      height: 0.5,
      fontWeight: FontWeight.w400);
  static const TextStyle listItemText = TextStyle(
    fontFamily: 'Balsamiq',
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static TextStyle footerText = TextStyle(
      fontFamily: 'Balsamiq',
      color: Colors.grey[300],
      fontSize: 12,
      height: 0.5,
      fontWeight: FontWeight.w200);
}
