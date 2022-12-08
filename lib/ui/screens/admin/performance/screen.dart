import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/app/core/base/base_screen.dart';
import 'package:project_app/app/core/base/base_view.dart';
import 'package:project_app/app/services/theme_servise.dart';
import 'package:project_app/app/utils/locator.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'controller.dart';

part '_desktop.dart';
part '_mobile.dart';
part '_tablet.dart';
part '_watch.dart';

class AdminScreen extends GetResponsiveView<AdminController> {
  AdminScreen({super.key});

  @override
  Widget builder() {
    return GetBuilder(
        init: AdminController(),
        autoRemove: false,
        tag: tag,
        builder: (i) => screen.responsiveValue(
              desktop: const _Desktop(key: Key("AdminScreen_Desktop")),
              mobile: const _Mobile(key: Key("AdminScreen_Mobile")),
              tablet: const _Tablet(key: Key("AdminScreen_Tablet")),
              watch: const _Watch(key: Key("AdminScreen_Watch")),
            )!);
  }
}
