import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:project_app/app/services/theme_servise.dart';

import 'router/router.dart';
import 'utils/locator.dart';

class ProjectApp extends StatelessWidget {
  const ProjectApp({super.key});
  GoRouter get _router => AppRouter.router;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      title: "project_app",
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      routeInformationProvider: _router.routeInformationProvider,
      theme: locator.get<ThemeServise>().lightTheme,
      darkTheme: locator.get<ThemeServise>().darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
    );
  }
}
