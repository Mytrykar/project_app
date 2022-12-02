import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:project_app/app/utils/logger.dart';

import 'base_view_controller.dart';

// ignore: must_be_immutable
abstract class BaseWidget extends GetView<BaseController> {
  BaseWidget({
    super.key,
  });
  Logger? logger;

  void log(void Function(Logger logger) log, String? className) {
    if (kDebugMode) {
      logger ??= getLogger(className!);
      log.call(logger!);
    }
  }
}
