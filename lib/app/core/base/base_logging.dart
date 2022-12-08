import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:project_app/app/utils/logger.dart';

mixin Logging {
  Logger? _logger;
  initLogging(String title) {
    if (kDebugMode) {
      _logger = getLogger(title);
    }
  }

  /// [metodName] !T! = протестуйте метод класа.
  /// []
  void log(String metodName, int processNumber,
      {required Object waitResult,
      required Object result,
      required Object waitInput,
      required Object input}) {
    if (waitInput.toString() != input.toString()) return;
    if (waitResult.toString() != result.toString()) {
      _logger!.wtf("""
В [$metodName] не той результат!
Очікується: ${waitResult.toString()}
Результат: ${result}...
""");
    }
  }
}
