import 'package:flutter/material.dart';
import 'package:project_app/app/core/base/base_controller.dart';
import 'package:project_app/app/core/base/base_widget.dart';
import 'package:project_app/app/extensions/context.dart';
import 'package:project_app/app/services/theme_servise.dart';
import 'package:project_app/app/utils/locator.dart';
import 'package:project_app/ui/screens/admin/performance/controller.dart';
import 'package:project_app/ui/widgets/dumb/drawer_layout.dart';

abstract class AdminDraver extends BaseWidget<AdminController, BaseController> {
  const AdminDraver({super.key});
  @override
  // ignore: overridden_fields
  final String? superTag = "Admin";

  Widget iconComponent(IconData icon, BuildContext context) {
    return Icon(icon,
        color:
            locator<ThemeServise>().current(context).iconDrawerComponentColor);
  }

  Widget textComponent(String text, BuildContext context) {
    return Text(
      text,
      style: locator<ThemeServise>().current(context).drawerComponentTextStyle,
    );
  }

  Widget rowComponents(
    BuildContext context,
    String text,
    IconData icon,
  ) {
    return Row(
      children: [
        iconComponent(icon, context),
        textComponent(text, context),
      ],
    );
  }
}

class AdminDraverDesktop extends AdminDraver {
  final Size size;
  const AdminDraverDesktop(
    this.size, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerLayout(size: size, children: [
      rowComponents(context, context.tr!.constructor, Icons.construction),
    ]);
  }
}

class AdminDrawerTablet extends AdminDraver {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DrawerLayout(size: size, children: [
      rowComponents(context, context.tr!.constructor, Icons.construction),
    ]);
  }
}
