import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:project_app/app/utils/logger.dart';

class BaseService {
  Logger? _logger;
  BaseService(String title) {
    if (kDebugMode) {
      _logger = getLogger(title);
    }
  }
  void log(String process) {
    if (_logger == null) return;
    _logger!.i(process);
  }
}
