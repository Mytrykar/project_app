import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project_app/app/core/base/base_view_controller.dart';

abstract class BaseView<T extends BaseController> extends StatelessWidget {
  const BaseView({super.key});
  final String? tag = null;

  T get controller => GetInstance().find<T>(tag: tag);
}
