import 'package:flutter/material.dart';
import 'package:project_app/app/core/base/base_controller.dart';
import 'package:project_app/app/core/base/base_widget.dart';
import 'package:project_app/app/extensions/context.dart';
import 'package:project_app/ui/screens/admin/performance/controller.dart';
import 'package:project_app/ui/widgets/dumb/drawer_item.dart';
import 'package:project_app/ui/widgets/dumb/drawer_user.dart';
import 'package:project_app/ui/widgets/dumb/drawer_widget.dart';
import 'package:project_app/ui/widgets/smart/animated_drawer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

abstract class AdminDrawer extends BaseWidget<AdminController, BaseController> {
  final double width;
  const AdminDrawer({required this.width, super.key});
  @override
  // ignore: overridden_fields
  final String? superTag = "Admin";

  /// [DrawerItem] icon
  Icon icon(IconData iconData) => Icon(iconData);

  /// [DrawerItem] text
  Text text(String text) => Text(text);
}

class AdminDrawerWidget extends AdminDrawer {
  const AdminDrawerWidget({
    required super.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerWidget(
        width: width,
        footer: DrawerUser(
          name: "Mitrykar",
          email: "sadasfasf@sdgsdg.sdfg",
          size: Size.fromHeight(10.h),
        ),
        header: const SizedBox(),
        children: [
          DrawerItem(
            icon: const Icon(Icons.construction),
            label: Text(context.tr!.constructor),
            isCollapsed: false,
            onTap: () {},
          ),
        ]);
  }
}

class AnimatedAdminDrawerWidget extends AdminDrawer {
  const AnimatedAdminDrawerWidget({required super.width, super.key});
  @override
  Widget build(BuildContext context) {
    return AnimatedDrawerWidget(
        width: width,
        footer: DrawerUser(
          name: "Mitrykar",
          email: "sadasfasf@sdgsdg.sdfg",
          size: Size.fromHeight(10.h),
        ),
        header: const SizedBox(),
        children: [
          DrawerItem(
            icon: const Icon(Icons.construction),
            label: Text(context.tr!.constructor),
            isCollapsed: true,
            onTap: () {},
          ),
        ]);
  }
}
