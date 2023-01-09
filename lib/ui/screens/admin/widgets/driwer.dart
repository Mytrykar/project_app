import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/app/core/base/base_controller.dart';
import 'package:project_app/app/core/base/base_widget.dart';
import 'package:project_app/app/extensions/context.dart';
import 'package:project_app/app/services/theme_servise.dart';
import 'package:project_app/app/utils/locator.dart';
import 'package:project_app/ui/screens/admin/performance/controller.dart';
import 'package:project_app/ui/screens/admin/performance/screen.dart';
import 'package:project_app/ui/screens/admin/views/constructor/performance/screen.dart';
import 'package:project_app/ui/widgets/dumb/drawer_widget.dart';
import 'package:project_app/ui/widgets/smart/animated_drawer.dart';
import 'package:project_app/ui/widgets/utils/drawer_item.dart';
import 'package:project_app/ui/widgets/utils/drawer_user.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

abstract class AdminDrawer extends BaseWidget<AdminController, BaseController> {
  final double width;
  const AdminDrawer({required this.width, super.key});

  @override
  // ignore: overridden_fields
  final tag = AdminScreen.id;

  List<DrawerItem> items(BuildContext context, String currentPage) {
    return [
      DrawerItem("Home", icon: Icons.home, onTap: () {
        controller.goToPage("Home");
      },
          // TODO перевести [item] context.tr!.item
          item: "Home")
        ..checkSelected(currentPage),
      DrawerItem(ConstructorView.name, icon: Icons.construction, onTap: () {
        controller.goToPage(ConstructorView.name);
      }, item: context.tr!.constructor)
        ..checkSelected(currentPage),
    ];
  }
}

class AdminDrawerWidgetMobile extends AdminDrawer {
  const AdminDrawerWidgetMobile({
    required super.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => DrawerWidget(
        adminDrawerTheme:
            locator<ThemeServise>().current(context).adminDrawerTheme,
        width: width,
        userInfo: DrawerUser(name: "Mitrykar", email: "sadasfasf@sdgsdg.sdfg"),
        footer: const SizedBox(),
        items: items(context, controller.currentPage.value),
      ),
    );
  }
}

class AdminDrawerWidgetTablet extends AdminDrawer {
  const AdminDrawerWidgetTablet({required super.width, super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedDrawerWidget(
        adminDrawerTheme:
            locator<ThemeServise>().current(context).adminDrawerTheme,
        collapsedWidth: 50,
        height: Device.height,
        width: width,
        items: items(context, controller.currentPage.value),
      ),
    );
  }
}

class AdminDrawerWidgetDesktop extends AdminDrawer {
  const AdminDrawerWidgetDesktop({super.key, required super.width});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => DrawerWidget(
        adminDrawerTheme:
            locator<ThemeServise>().current(context).adminDrawerTheme,
        width: width,
        footer: const SizedBox(),
        items: items(context, controller.currentPage.value),
      ),
    );
  }
}
