// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_router;

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $adminRoute,
      $loginRoute,
      $resumeRoute,
    ];

GoRoute get $adminRoute => GoRouteData.$route(
      path: '/admin-panel',
      factory: $AdminRouteExtension._fromState,
    );

extension $AdminRouteExtension on AdminRoute {
  static AdminRoute _fromState(GoRouterState state) => const AdminRoute();

  String get location => GoRouteData.$location(
        '/admin-panel',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $loginRoute => GoRouteData.$route(
      path: '/login',
      factory: $LoginRouteExtension._fromState,
    );

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $resumeRoute => GoRouteData.$route(
      path: '/resume',
      factory: $ResumeRouteExtension._fromState,
    );

extension $ResumeRouteExtension on ResumeRoute {
  static ResumeRoute _fromState(GoRouterState state) => const ResumeRoute();

  String get location => GoRouteData.$location(
        '/resume',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
