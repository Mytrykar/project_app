import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project_app/app/core/base/base_view_controller.dart';

abstract class BaseScreen<T extends BaseController>
    extends GetResponsiveView<T> {
  BaseScreen({
    Key? key,
  }) : super(
            key: key,
            alwaysUseBuilder: true,
            settings: const ResponsiveScreenSettings());
}
