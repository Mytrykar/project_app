import 'package:flutter/widgets.dart';
import 'package:get/instance_manager.dart';

import 'package:project_app/app/core/base/base_controller.dart';

abstract class BaseView<T extends BaseController> extends StatelessWidget {
  final String? tag;
  const BaseView({super.key, required this.tag});

  T get controller => Get.find<T>(tag: tag);
}
