import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/app/core/base/base_screen.dart';
import 'package:project_app/app/core/base/base_view_controller.dart';
import 'package:project_app/ui/screens/example_screen/performance/example_screen.dart';
import 'package:project_app/ui/screens/example_screen/views/example_view/performance/screen_controller.dart';
import 'package:project_app/ui/widgets/dumb/error_screen.dart';

part '_desktop.dart';
part '_mobile.dart';
part '_tablet.dart';
part '_watch.dart';

class ExampleView extends BaseScreen<ExampleViewController> {
  static String routeName = "${ExampleScreen.routeName}example";

  ExampleView({Key? key}) : super(key: key) {
    Get.put<ExampleViewController>(ExampleViewController(),
        tag: "View_controller");
  }

  @override
  Widget build(BuildContext context) {
    return screen.responsiveValue(
          desktop: _Desktop(),
          mobile: _Mobile(),
          tablet: _Tablet(),
          watch: _Watch(),
        ) ??
        const ErrorBuildViewWidget();
  }
}
