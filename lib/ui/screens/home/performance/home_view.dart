import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/app/core/base/base_screen.dart';
import 'package:project_app/app/core/base/base_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'view_controller.dart';

part '_desktop.dart';
part '_mobile.dart';
part '_tablet.dart';
part '_watch.dart';

class HomeScreen extends BaseScreen<HomeViewController> {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(
        init: HomeViewController(),
        autoRemove: true,
        // tag: context.,
        builder: (i) => screen.responsiveValue(
              desktop: const _Desktop(key: Key("HomeScreen_Desktop")),
              mobile: const _Mobile(key: Key("HomeScreen_Mobile")),
              tablet: const _Tablet(key: Key("HomeScreen_Tablet")),
              watch: const _Watch(key: Key("HomeScreen_Watch")),
            )!);
  }
}
