part of '../app_theme.dart';

class DarkTheme extends BaseTheme {
  DarkTheme()
      : super(
            nameTheme: "base_dark",
            brightness: Brightness.dark,
            colorScheme: const ColorScheme.dark(),
            iconThemeData: IconThemeData(color: Colors.grey, size: 20.dp),
            backgroundColor: Colors.black87,
            headline1: TextStyle(color: Colors.white, fontSize: 25.dp),
            currentLayoutcolor: Colors.blue);
}
