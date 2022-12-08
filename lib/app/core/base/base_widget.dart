import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'base_view_controller.dart';

abstract class BaseWidget<T extends BaseController> extends StatelessWidget {
  const BaseWidget({
    super.key,
  });
  final String? tag = null;

  T get controller => GetInstance().find<T>(tag: tag);
}
