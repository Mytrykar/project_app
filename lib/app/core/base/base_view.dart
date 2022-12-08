import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project_app/app/core/base/base_controller.dart';

abstract class BaseView<T extends BaseController> extends StatelessWidget {
  const BaseView({super.key});

  /// Головний контроллер, використовуйте його для управління підконтроллерами.
  /// Якщо немає підконтроллерів то використовуйте його для управління віджетами.
  T get controller {
    final tag = Get.arguments["tag"] as String;
    return GetInstance().find<T>(tag: tag);
  }
}
