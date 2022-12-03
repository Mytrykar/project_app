import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/app/core/base/base_servise.dart';
import 'package:project_app/app/core/base/base_theme.dart';
import 'package:project_app/app/theme/app_theme.dart';

class ThemeServise extends BaseService {
  ThemeServise(super.title);
  late BaseTheme _currentLightTheme;
  late BaseTheme _currendDarkTheme;

  ThemeData get lightTheme {
    return _currentLightTheme.theme;
  }

  ThemeData get darkTheme {
    return _currendDarkTheme.theme;
  }

  void init() {
    // TODO Якщо ви використовуєте більше двух тем тоді вам потрібно перевірити чи користувач зберіг іншу тему в памяті
    _currentLightTheme = AppTheme.defaultLightTheme;
    _currendDarkTheme = AppTheme.defaultDarkTheme;
  }

  void setThemeToNamed(String nameTheme) {
    BaseTheme? newTheme = AppTheme.themes
        .firstWhereOrNull((element) => element.nameTheme == nameTheme);
    if (newTheme == null) {
      throw Exception(
          "Ошибка в названии теми $nameTheme, или она не существует");
    }
    if (nameTheme == _currentLightTheme.nameTheme ||
        nameTheme == _currendDarkTheme.nameTheme) {
      return;
    }
    log.i(
        "Switch theme event: new ${newTheme.brightness.name}Theme $nameTheme");
    newTheme.brightness == Brightness.light
        ? _currentLightTheme = newTheme
        : _currendDarkTheme = newTheme;

    Get.changeTheme(newTheme.theme);
  }
}
