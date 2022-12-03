import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/app/core/base/base_screen.dart';

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
              desktop: _Desktop(),
              mobile: _Mobile(),
              tablet: _Tablet(),
              watch: _Watch(),
            )!);
  }
}
