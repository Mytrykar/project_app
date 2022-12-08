import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/app/core/base/base_screen.dart';
import 'package:project_app/app/core/base/base_view.dart';
import 'package:project_app/app/services/theme_servise.dart';
import 'package:project_app/app/utils/locator.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'controller.dart';

part '_desktop.dart';
part '_mobile.dart';
part '_tablet.dart';
part '_watch.dart';

class HomeScreen extends BaseScreen<HomeViewController> {
  @override
  final String? tag;
  HomeScreen(this.tag, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(
        init: HomeViewController(),
        autoRemove: false,
        builder: (i) => screen.responsiveValue(
              desktop: const _Desktop(key: Key("HomeScreen_Desktop")),
              mobile: const _Mobile(key: Key("HomeScreen_Mobile")),
              tablet: const _Tablet(key: Key("HomeScreen_Tablet")),
              watch: const _Watch(key: Key("HomeScreen_Watch")),
            )!);
  }
}
