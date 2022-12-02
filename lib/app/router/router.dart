import 'package:auto_route/auto_route.dart';
import 'package:project_app/ui/screens/example_screen/performance/example_screen.dart';

part 'router.g.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: "View,Route",
  routes: <AutoRoute>[
    AdaptiveRoute(page: ExampleScreen(), initial: true),
  ],
)
class $AppRouter {}
