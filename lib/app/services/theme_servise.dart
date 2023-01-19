import 'package:flutter/material.dart';
import 'package:project_app/app/core/base/base_servise.dart';
import 'package:project_app/app/core/base/base_theme.dart';
import 'package:project_app/app/extensions/context.dart';
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

  BaseTheme current(BuildContext context) {
    if (context.theme.brightness == Brightness.light) return _currentLightTheme;
    return _currendDarkTheme;
  }

  void init() {
    // TODO If you use more than two themes then you need to check if the user has saved another theme in memory.
    _currentLightTheme = AppTheme.defaultLightTheme;
    _currendDarkTheme = AppTheme.defaultDarkTheme;
  }

  void changeTheme(BaseTheme theme,{Brightness? brightness}) {
    log.i(
        "Switch theme event: new ${theme.brightness.name}Theme ${brightness == Brightness.light ? _currentLightTheme : _currendDarkTheme}");
    if(brightness != null && theme.brightness != brightness){
      
    }

  }
}
