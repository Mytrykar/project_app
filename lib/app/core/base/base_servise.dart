import 'package:logger/logger.dart';
import 'package:project_app/app/utils/logger.dart';

class BaseService {
  late Logger log;

  BaseService(String? title) {
    log = getLogger(
      title ?? runtimeType.toString(),
    );
  }
}
