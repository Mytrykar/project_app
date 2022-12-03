// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_router;

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $homeRoute,
      $exampleRoute,
    ];

GoRoute get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $exampleRoute => GoRouteData.$route(
      path: '/example',
      factory: $ExampleRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'example2/:tag',
          factory: $ExampleRoute2Extension._fromState,
        ),
      ],
    );

extension $ExampleRouteExtension on ExampleRoute {
  static ExampleRoute _fromState(GoRouterState state) => const ExampleRoute();

  String get location => GoRouteData.$location(
        '/example',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $ExampleRoute2Extension on ExampleRoute2 {
  static ExampleRoute2 _fromState(GoRouterState state) => ExampleRoute2(
        state.params['tag']!,
      );

  String get location => GoRouteData.$location(
        '/example/example2/${Uri.encodeComponent(tag)}',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
