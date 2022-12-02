import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/app/core/base/base_screen.dart';
import 'package:project_app/ui/screens/example_screen/performance/screen_controller.dart';
import 'package:project_app/ui/widgets/dumb/erros_build_view.dart';

part '_desktop.dart';
part '_mobile.dart';
part '_tablet.dart';
part '_watch.dart';

class ExampleScreen extends BaseScreen<ExampleScreenController> {
  static String routeName = "example/";

  ExampleScreen({Key? key}) : super(key: key) {
    Get.put<ExampleScreenController>(ExampleScreenController(),
        tag: "screen_controller");
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
