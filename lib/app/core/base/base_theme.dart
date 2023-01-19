import 'package:flutter/material.dart';

// !T!Це базова тема додатка, розширьте її щоб створити теми додатка.
class BaseTheme {
  final Brightness brightness;
  final IconThemeData iconThemeData;
  final ColorScheme colorScheme;
  final Color backgroundColor;
  final TextStyle headline1;
  final Color currentLayoutcolor;
  final AdminDrawerTheme adminDrawerTheme;

  const BaseTheme(
      {required this.adminDrawerTheme,
      required this.currentLayoutcolor,
      required this.headline1,
      required this.backgroundColor,
      required this.brightness,
      required this.iconThemeData,
      required this.colorScheme});

  ThemeData get theme {
    return ThemeData(
        colorScheme: colorScheme,
        brightness: brightness,
        appBarTheme: AppBarTheme(actionsIconTheme: iconThemeData),
        backgroundColor: backgroundColor,
        textTheme: TextTheme(headline1: headline1));
  }

  BaseTheme copyWith(
      {Brightness? brightness,
      IconThemeData? iconThemeData,
      ColorScheme? colorScheme,
      Color? backgroundColor,
      TextStyle? headline1,
      Color? currentLayoutcolor,
      AdminDrawerTheme? adminDrawerTheme}) {
    return BaseTheme(
        adminDrawerTheme: adminDrawerTheme ?? this.adminDrawerTheme,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        brightness: brightness ?? this.brightness,
        colorScheme: colorScheme ?? this.colorScheme,
        currentLayoutcolor: currentLayoutcolor ?? this.currentLayoutcolor,
        headline1: headline1 ?? this.headline1,
        iconThemeData: iconThemeData ?? this.iconThemeData);
  }
}

class AdminDrawerTheme {
  final Color backgroundColor;
  final Color itemColor;
  final Color selectItemColor;
  const AdminDrawerTheme(
      {required this.selectItemColor,
      required this.backgroundColor,
      required this.itemColor});
}
