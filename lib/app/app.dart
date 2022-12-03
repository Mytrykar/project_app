import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'router/router.dart';

class ProjectApp extends StatelessWidget {
  const ProjectApp({super.key});
  GoRouter get _router => AppRouter.router;
  @override
  Widget build(BuildContext context) {
    // final RouterService _routerService = locator<RouterService>();

    return MaterialApp.router(
      title: "project_app",
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      routeInformationProvider: _router.routeInformationProvider,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}
