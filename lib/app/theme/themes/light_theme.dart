part of '../app_theme.dart';

class LightTheme extends BaseTheme {
  LightTheme()
      : super(
            brightness: Brightness.light,
            colorScheme: const ColorScheme.light(),
            iconThemeData: const IconThemeData(color: Colors.grey, size: 20),
            backgroundColor: Colors.white,
            headline1: const TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
            currentLayoutcolor: Colors.blue,
            adminDrawerTheme: const AdminDrawerTheme(
                backgroundColor: Color.fromARGB(255, 12, 19, 51),
                itemColor: Colors.white,
                selectItemColor: Colors.blue));
}
