part of '../router.dart';

@TypedGoRoute<ExampleRoute>(
  path: '/example',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<ExampleRoute2>(
      path: 'example2/:tag',
    )
  ],
)
class ExampleRoute extends GoRouteData {
  const ExampleRoute();

  @override
  Widget build(BuildContext context) => HomeScreen();
}

class ExampleRoute2 extends GoRouteData {
  const ExampleRoute2(this.tag);
  final String tag;

  @override
  Widget build(BuildContext context) => HomeScreen();
}
