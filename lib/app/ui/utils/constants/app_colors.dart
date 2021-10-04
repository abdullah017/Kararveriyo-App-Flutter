// ignore_for_file: constant_identifier_names

import 'dart:math';

import 'package:flutter/material.dart';

//* App Colors Class - Resource class for storing app level color constants
class AppColors {
  static const Color PRIMARY_COLOR = Color(0xFF35B4C5);
  static const Color PRIMARY_COLOR_LIGHT = Color(0xFFA5CFF1);
  static const Color PRIMARY_COLOR_DARK = Color(0xFF0D3656);
  static const Color ACCENT_COLOR = Color(0xFFF2DA04);

//*TEXTFORMFIELD BORDER
  static const Color NORMAL_BORDER = Color(0xff53B9D8);
  static const Color ERROR_BORDER = Colors.red;
  //*TEXTFORMFIELD PREFIX ICON
  static const Color PREFIX_ICON = Color(0xff53B9D8);

  //* VOLUNTEER CATEGORIES CARD COLOR

  static List<Color> vlntrColor = [
    //1
    GREYISH_PINK,
    CORNFLOWER_BLUE,
    GREENISH_YELLOW,
    TEALISH_GREEN,

    ROSE_PINK,
    REDDISH_ORANGE,
    LIMED_GREEN,
    MANGO_ORANGE,
    GREEN_CYAN,
    LIGHT_RED,

    COOL_BLUE,
    GREENISH_BLUE,
    WARM_PURPLE,
    PINK_LEMONADE,
    BLUISH_CYAN,
    CARMINE_PINK,

    TURKHIS_ROSE,
    STORM_GREEN_CYAN,
    ORANGY_YELLOW,
    AQUMARINE_BLUE,
    YELLOWISH_ORANGE,
    FALU_RED,

    NUTMEG_WOOD,
    CHESTNUT_RED,
    TUMBLEWEED,
    DARK_ROSE,
    FROST_ORANGE,
    SUMMER_GREEN
  ];

  static Color randomGenerator() {
        return vlntrColor[Random().nextInt(27)];
      }

  //1
  static const Color GREYISH_PINK = Color(0xffC68D8A);
  static const Color PASTEL_ORANGE = Color(0xffFF9150);
  static const Color YELLOW_GREEN = Color(0xffBDC8B3);
  static const Color CORNFLOWER_BLUE = Color(0xff659FDD);
  static const Color GREENISH_YELLOW = Color(0xffBCDD62);
  static const Color TEALISH_GREEN = Color(0xff4AAD61);

  //2
  static const Color ROSE_PINK = Color(0xffF98297);
  static const Color REDDISH_ORANGE = Color(0xffDEA176);
  static const Color LIMED_GREEN = Color(0xff757B6F);
  static const Color MANGO_ORANGE = Color(0xffFF7F2C);
  static const Color GREEN_CYAN = Color(0xff97B3A2);
  static const Color LIGHT_RED = Color(0xffF7514D);

  //3
  static const Color COOL_BLUE = Color(0xff478EB0);
  static const Color GREENISH_BLUE = Color(0xff297770);
  static const Color WARM_PURPLE = Color(0xff92278F);
  static const Color PINK_LEMONADE = Color(0xffE12C6A);
  static const Color BLUISH_CYAN = Color(0xff009DD9);
  static const Color CARMINE_PINK = Color(0xffE73F4B);

  //4
  static const Color TURKHIS_ROSE = Color(0xffA97B80);
  static const Color STORM_GREEN_CYAN = Color(0xff596A63);
  static const Color ORANGY_YELLOW = Color(0xffF8D22E);
  static const Color AQUMARINE_BLUE = Color(0xff6FDED6);
  static const Color YELLOWISH_ORANGE = Color(0xffFFA719);
  static const Color FALU_RED = Color(0xFF841618);

  //5
  static const Color NUTMEG_WOOD = Color(0xff6A3C00);
  static const Color CHESTNUT_RED = Color(0xffBB5327);
  static const Color TUMBLEWEED = Color(0xffDEA176);
  static const Color DARK_ROSE = Color(0xffAB5667);
  static const Color FROST_ORANGE = Color(0xff8A7B6D);
  static const Color SUMMER_GREEN = Color(0xff97B3A2);
}