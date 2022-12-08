import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'base_controller.dart';

abstract class BaseWidget<ScreenController extends BaseController,
    ViewController extends BaseController> extends StatelessWidget {
  const BaseWidget({super.key});

  final String? tag = null;

  ///!T! Використовуйте [controller] коли у вас є підконтроллери. Переопреділіть [tag]
  ViewController get controller => GetInstance().find<ViewController>(tag: tag);

  final String? superTag = null;

  /// Головний контроллер, використовуйте його для управління підконтроллерами.
  /// Якщо немає підконтроллерів то використовуйте його для управління віджетами.
  ScreenController get superController =>
      GetInstance().find<ScreenController>(tag: superTag);
}
