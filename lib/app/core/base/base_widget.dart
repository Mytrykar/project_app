import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'base_view_controller.dart';

// ignore: must_be_immutable
abstract class BaseWidget extends GetView<BaseController> {
  const BaseWidget({
    super.key,
  });
}
