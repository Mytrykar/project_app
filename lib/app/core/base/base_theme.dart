import 'package:flutter/material.dart';

// !T!Це базова тема додатка, розширьте її щоб створити теми додатка.
abstract class BaseTheme {
  final String nameTheme;
  final Brightness brightness;

  final ColorScheme colorScheme;

  const BaseTheme(this.nameTheme, this.brightness, {required this.colorScheme});

  ThemeData get theme {
    return ThemeData(colorScheme: colorScheme, brightness: brightness);
  }
}
