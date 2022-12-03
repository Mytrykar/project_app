import 'package:flutter/material.dart';

import 'package:project_app/app/app.dart';

import 'app/utils/locator.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocatorInjector.setupLocator();

  /// Runs the app :)
  runApp(const ProjectApp());
}
