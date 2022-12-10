import 'package:flutter/material.dart';
import 'package:project_app/app/core/base/base_controller.dart';
import 'package:project_app/app/core/base/base_widget.dart';
import 'package:project_app/app/extensions/context.dart';
import 'package:project_app/ui/screens/admin/performance/controller.dart';
import 'package:project_app/ui/widgets/dumb/drawer_item.dart';
import 'package:project_app/ui/widgets/dumb/drawer_widget.dart';
import 'package:project_app/ui/widgets/smart/animated_drawer.dart';

abstract class AdminDrawer extends BaseWidget<AdminController, BaseController> {
  const AdminDrawer({super.key});
  @override
  // ignore: overridden_fields
  final String? superTag = "Admin";
}

class AdminDraverDesktop extends AdminDrawer {
  final Size size;
  const AdminDraverDesktop({
    required this.size,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerWidget(size: size, children: [
      DrawerItem(
          icon: const Icon(Icons.construction),
          label: Text(context.tr!.constructor),
          isCollapsed: true),
    ]);
  }
}

class AdminDrawerTablet extends AdminDrawer {
  final Size size;

  const AdminDrawerTablet({required this.size, super.key});
  @override
  Widget build(BuildContext context) {
    return AnimatedDrawerWidget(size: size, closeFunction: () {}, children: [
      DrawerItem(
          icon: const Icon(Icons.construction),
          label: Text(context.tr!.constructor),
          isCollapsed: true),
    ]);
  }
}

class AdminDrawerMobile extends AdminDrawer {
  final Size size;
  const AdminDrawerMobile({required this.size, super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerWidget(size: size, children: [
      DrawerItem(
          icon: const Icon(Icons.construction),
          label: Text(context.tr!.constructor),
          isCollapsed: true),
    ]);
  }
}
