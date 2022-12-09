import 'package:flutter/material.dart';

// !T!Це базова тема додатка, розширьте її щоб створити теми додатка.
abstract class BaseTheme {
  final String nameTheme;
  final Brightness brightness;
  final IconThemeData iconThemeData;
  final ColorScheme colorScheme;
  final Color backgroundColor;
  final TextStyle headline1;
  final Color currentLayoutcolor;
  final DrawerThemeData drawerThemeData;

  const BaseTheme(
      {required this.drawerThemeData,
      required this.currentLayoutcolor,
      required this.headline1,
      required this.backgroundColor,
      required this.nameTheme,
      required this.brightness,
      required this.iconThemeData,
      required this.colorScheme});

  ThemeData get theme {
    return ThemeData(
        colorScheme: colorScheme,
        brightness: brightness,
        appBarTheme: AppBarTheme(actionsIconTheme: iconThemeData),
        drawerTheme: drawerThemeData,
        backgroundColor: backgroundColor,
        textTheme: TextTheme(headline1: headline1));
  }
}
