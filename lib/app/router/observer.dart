part of 'router.dart';

class _DebugObserver extends NavigatorObserver {
  Logger log = getLogger("DebugRouteObserver");

  @override
  void didPop(Route route, Route? previousRoute) {
    log.i("""Pop
Route transition: ${previousRoute?.settings.name} to ${route.settings.name}""");
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    log.i("""Push
Route transition: ${previousRoute?.settings.name} to ${route.settings.name}""");
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    log.i("""Remove
Route transition: ${previousRoute?.settings.name} to ${route.settings.name}""");
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    log.i("""Replace
Route transition: ${oldRoute?.settings.name} to ${newRoute?.settings.name}""");
  }

  @override
  void didStartUserGesture(Route route, Route? previousRoute) {
    log.i("""StartUserGesture
Route transition: ${previousRoute?.settings.name} to ${route.settings.name}""");
  }

  @override
  void didStopUserGesture() {
    log.i("StopUserGesture");
  }
}
