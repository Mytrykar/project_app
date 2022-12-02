import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:project_app/app/core/base/base_view_controller.dart';
import 'package:project_app/app/utils/logger.dart';

// ignore: must_be_immutable
abstract class BaseBlocWidget<T extends BaseController> extends StatefulWidget {
  BaseBlocWidget({super.key, this.logger, required String className}) {
    logger = getLogger(className);
  }

  final String? tag = null;

  T get controller => GetInstance().find<T>(tag: tag);

  Logger? logger;

  void log(void Function(Logger logger) log, String? className) {
    if (kDebugMode) {
      logger ??= getLogger(className!);
      log.call(logger!);
    }
  }
}
