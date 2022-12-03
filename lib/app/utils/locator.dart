import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:project_app/app/services/navigator_servise.dart';

import 'logger.dart';

GetIt locator = GetIt.instance;

class LocatorInjector {
  static Logger log = getLogger('LocatorInjector');

  static Future<void> setupLocator() async {
    // log.d('Initializing Navigator Service');
    // locator.registerLazySingleton(() => NavigatorService("NavigatorSirvise"));
  }
}
