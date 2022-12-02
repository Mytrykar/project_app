import 'package:auto_route/auto_route.dart';

import 'package:project_app/ui/views/home/home_view.dart';
import 'package:project_app/ui/views/startup/startup_view.dart';

export './router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: "View,Route",
  routes: <AutoRoute>[
    AdaptiveRoute(page: StartupView, initial: true),
    AdaptiveRoute(page: HomeView),
  ],
)
class $project_appRouter {}
