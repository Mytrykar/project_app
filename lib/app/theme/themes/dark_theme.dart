part of '../app_theme.dart';

class DarkTheme extends BaseTheme {
  DarkTheme()
      : super(
            nameTheme: "base_dark",
            brightness: Brightness.dark,
            colorScheme: const ColorScheme.dark(),
            iconThemeData: const IconThemeData(color: Colors.grey, size: 20),
            backgroundColor: Colors.black87,
            headline1: const TextStyle(color: Colors.white, fontSize: 25),
            currentLayoutcolor: Colors.blue);
}
