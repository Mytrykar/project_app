library app_theme;

import 'package:flutter/material.dart';
import 'package:project_app/app/core/base/base_theme.dart';
part 'themes/dark_theme.dart';
part 'themes/light_theme.dart';

class AppTheme {
  static final BaseTheme defaultLightTheme = LightTheme();
  static final BaseTheme defaultDarkTheme = DarkTheme();

  static final List<BaseTheme> themes = [
    // base_light
    LightTheme(),
    // base_dark
    DarkTheme(),
  ];
}
