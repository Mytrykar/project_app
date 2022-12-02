import "package:injectable/injectable.dart";
import "package:project_app/app/router/router.dart";

@lazySingleton
class RouterService {
  final project_appRouter router = project_appRouter();
}
