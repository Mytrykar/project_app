import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'base_controller.dart';

abstract class BaseWidget<ScreenController extends BaseController,
    ViewController extends BaseController> extends StatelessWidget {
  const BaseWidget({super.key});

  final String? tagSubController = null;

  ///!T! Використовуйте [controller] коли у вас є підконтроллери. Переопреділіть [tag]
  ViewController get subController =>
      GetInstance().find<ViewController>(tag: tagSubController);

  final String? tag = null;

  /// Головний контроллер, використовуйте його для управління підконтроллерами.
  /// Якщо немає підконтроллерів то використовуйте його для управління віджетами.
  ScreenController get controller =>
      GetInstance().find<ScreenController>(tag: tag);
}
