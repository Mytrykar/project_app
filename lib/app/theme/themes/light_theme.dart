part of '../app_theme.dart';

class LightTheme extends BaseTheme {
  LightTheme()
      : super(
            nameTheme: "base_light",
            brightness: Brightness.light,
            colorScheme: const ColorScheme.light(),
            iconThemeData: IconThemeData(color: Colors.grey, size: 20.dp),
            backgroundColor: Colors.white,
            headline1: TextStyle(
              color: Colors.black,
              fontSize: 25.dp,
            ),
            currentLayoutcolor: Colors.blue);
}
