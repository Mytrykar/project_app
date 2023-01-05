import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:project_app/app/core/base/base_screen.dart';
import 'package:project_app/ui/widgets/dumb/sing_in_buttom.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

import '../../app/core/base/base_controller.dart';

typedef ContentBuilder = Widget Function(
    BuildContext context, String screenType);

class WebsiteLayoutBuilder<ContentController extends BaseController>
    extends StatelessWidget with ResponsiveMixin {
  final ContentBuilder builder;
  final String page;
  final ContentController controller;
  final void Function(GetBuilderState<ContentController>)? initState;
  const WebsiteLayoutBuilder(
      {super.key,
      required this.builder,
      required this.page,
      required this.controller,
      this.initState});

  static const List<String> pages = ["RESUME", "BLOG", "CONTACTS"];

  @override
  Widget superControllerBilding(Widget child) => GetBuilder<ContentController>(
      global: false,
      initState: initState,
      autoRemove: true,
      init: controller,
      builder: (i) => child);

  /// Material
  @override
  Widget? desctop_4K() => superControllerBilding(BouncingScrollWrapper(
          child: Scaffold(
        appBar: AppBar(actions: []),
      )));
  @override
  Widget? desktop() => superControllerBilding(BouncingScrollWrapper(
          child: Scaffold(
        appBar: AppBar(actions: [
          SingInButton(
            text: "Sing in",
            iconData: Icons.u_turn_right_rounded,
            onPressed: () {},
          )
        ]),
      )));
  @override
  Widget? mobile() => null;
  @override
  Widget? tablet() => null;
}
