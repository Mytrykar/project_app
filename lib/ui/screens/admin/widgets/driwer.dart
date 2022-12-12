import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/app/core/base/base_controller.dart';
import 'package:project_app/app/core/base/base_widget.dart';
import 'package:project_app/app/extensions/context.dart';
import 'package:project_app/ui/screens/admin/performance/controller.dart';
import 'package:project_app/ui/widgets/dumb/drawer_widget.dart';
import 'package:project_app/ui/widgets/smart/animated_drawer.dart';
import 'package:project_app/ui/widgets/utils/drawer_item.dart';
import 'package:project_app/ui/widgets/utils/drawer_user.dart';

abstract class AdminDrawer extends BaseWidget<AdminController, BaseController> {
  final double width;
  const AdminDrawer({required this.width, super.key});
  @override
  // ignore: overridden_fields
  final String? superTag = "Admin";

  List<DrawerItem> items(BuildContext context, String currentPage) {
    return [
      DrawerItem("Home",
          icon: Icons.home, onTap: () {}, item: context.tr!.constructor)
        ..checkSelected(currentPage),
      DrawerItem("Constructor",
          icon: Icons.construction, onTap: () {}, item: context.tr!.constructor)
        ..checkSelected(currentPage),
    ];
  }
}

class AdminDrawerWidget extends AdminDrawer {
  const AdminDrawerWidget({
    required super.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => DrawerWidget(
        width: width,
        userInfo: DrawerUser(name: "Mitrykar", email: "sadasfasf@sdgsdg.sdfg"),
        footer: const SizedBox(),
        items: items(context, superController.currentPage.value),
      ),
    );
  }
}

class AnimatedAdminDrawerWidget extends AdminDrawer {
  const AnimatedAdminDrawerWidget({required super.width, super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedDrawerWidget(
        width: width,
        items: items(context, superController.currentPage.value),
      ),
    );
  }
}
