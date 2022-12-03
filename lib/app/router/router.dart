library app_router;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:project_app/app/core/base/base_screen.dart';
import 'package:project_app/app/utils/logger.dart';
import 'package:project_app/ui/screens/example_screen/index.dart';
import 'package:project_app/ui/widgets/dumb/error_screen.dart';

part 'gen/path_route.dart';
part 'gen/title_route.dart';
part 'gen/route_builder.dart';
part 'observer.dart';

/// Routing generated, do not remove comments
class AppRouter {
  /// use this in [MaterialApp.router]
  static GoRouter get router => _router;

  static final GoRouter _router = GoRouter(
    routes: _routes,
    observers: _observers,
    errorBuilder: (context, state) => const ErrorScreen(),
  );

  static List<NavigatorObserver>? get _observers {
    if (kDebugMode) return [_DebugObserver()];
    return null;
  }
}

// !Gen_routes
final _routes = <GoRoute>[
  // [PathRoute] = project_app/
  GoRoute(
      name: TitleRoute.home, path: PathRoute.home, builder: RouteBuilder.home),
];
