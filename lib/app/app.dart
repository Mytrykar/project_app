import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:go_router/go_router.dart';
import 'package:project_app/app/services/theme_servise.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'router/router.dart';
import 'utils/constants.dart';
import 'utils/locator.dart';

class ProjectApp extends StatelessWidget {
  const ProjectApp({super.key});
  GoRouter get _router => AppRouter.router;
  @override
  Widget build(BuildContext context) => ResponsiveSizer(
      builder: (context, __, _) => GetMaterialApp.router(
            title: "project_app",
            routeInformationParser: _router.routeInformationParser,
            routerDelegate: _router.routerDelegate,
            routeInformationProvider: _router.routeInformationProvider,
            theme: locator.get<ThemeServise>().lightTheme,
            darkTheme: locator.get<ThemeServise>().darkTheme,
            themeMode: ThemeMode.system,
            debugShowCheckedModeBanner: false,
            builder: (context, child) => ResponsiveWrapper.builder(
                BouncingScrollWrapper.builder(context, child!),
                maxWidth: 1200,
                minWidth: 450,
                defaultScale: true,
                breakpoints: [
                  const ResponsiveBreakpoint.resize(450, name: MOBILE),
                  if (defaultTargetPlatform == TargetPlatform.iOS)
                    const ResponsiveBreakpoint.autoScale(600, name: PHONE),
                  const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
                  const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
                  const ResponsiveBreakpoint.autoScale(2460,
                      name: Constants.DESKTOP_4K),
                ],
                background: Container(color: const Color(0xFFF5F5F5))),
          ));
}
