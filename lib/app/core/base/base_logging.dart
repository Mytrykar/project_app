import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:project_app/app/utils/logger.dart';

/// !T!Базове логування в режимі розробки, використовуйте щоб провірити правильність потоку данних в методах.
/// !T!В режимі реліза компілятор не створює об'єкт [Logger].
class Logging {
  Logger? _logger;
  Logging(String title) {
    if (kDebugMode) {
      _logger = getLogger(title);
    }
  }
}
