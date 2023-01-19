import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_app/app/services/theme_servise.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'router/router.dart';
import 'utils/constants.dart';
import 'utils/locator.dart';

class ProjectApp extends StatelessWidget {
  const ProjectApp({super.key});
  GoRouter get _router => AppRouter.router;
  @override
  Widget build(BuildContext context) => ResponsiveSizer(
      builder: (context, __, _) => MaterialApp.router(
            title: "project_app",
            routeInformationParser: _router.routeInformationParser,
            routerDelegate: _router.routerDelegate,
            routeInformationProvider: _router.routeInformationProvider,
            theme: locator.get<ThemeServise>().lightTheme,
            darkTheme: locator.get<ThemeServise>().darkTheme,
            themeMode: ThemeMode.system,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            builder: (context, child) => ResponsiveWrapper.builder(child,
                maxWidth: 2460,
                minWidth: 100,
                defaultScale: true,
                breakpoints: [
                  const ResponsiveBreakpoint.resize(450, name: MOBILE),
                  const ResponsiveBreakpoint.resize(800, name: TABLET),
                  const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
                  const ResponsiveBreakpoint.resize(2460,
                      name: DeviseScreen.DESKTOP_4K),
                ],
                background: Container(color: const Color(0xFFF5F5F5))),
          ));
}
