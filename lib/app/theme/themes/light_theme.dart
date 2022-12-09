part of '../app_theme.dart';

class LightTheme extends BaseTheme {
  LightTheme()
      : super(
            nameTheme: "base_light",
            brightness: Brightness.light,
            colorScheme: const ColorScheme.light(),
            iconThemeData: const IconThemeData(color: Colors.grey, size: 20),
            backgroundColor: Colors.white,
            headline1: const TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
            currentLayoutcolor: Colors.blue,
            drawerThemeData:
                const DrawerThemeData(backgroundColor: Colors.black38));
}
