import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project_app/app/core/base/base_view_controller.dart';

// ignore: must_be_immutable
abstract class BaseBlocWidget<T extends BaseController> extends StatefulWidget {
  const BaseBlocWidget({super.key});

  final String? tag = null;

  T get controller => GetInstance().find<T>(tag: tag);
}
