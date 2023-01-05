library app_router;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:project_app/app/utils/logger.dart';
import 'package:project_app/ui/screens/admin/performance/screen.dart';
import 'package:project_app/ui/widgets/dumb/error_widget.dart' as e;

part 'observer.dart';
part 'router.g.dart';
// Routing generated, do not remove comments
//Gen_routes_with_cli
part 'routes/admin_panel_route.dart';
part 'routes/login_route.dart';

class AppRouter {
  /// use this in [MaterialApp.router]
  static GoRouter get router => _router;

  static final GoRouter _router = GoRouter(
    routes: $appRoutes,
    observers: _observers,
    // initialLocation: "/resume",

    initialLocation: "/admin-panel",
    // redirect: (context, state) {
    //   // print(state.location);
    // },
    errorBuilder: (context, state) => const Scaffold(body: e.ErrorWidget()),
  );

  static List<NavigatorObserver>? get _observers {
    if (kDebugMode) return [RouteObserver()];
    return null;
  }
}
