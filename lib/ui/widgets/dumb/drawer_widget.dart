import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:project_app/app/core/base/base_theme.dart';
import 'package:project_app/ui/widgets/dumb/drawer_user_widget.dart';
import 'package:project_app/ui/widgets/utils/drawer_item.dart';
import 'package:project_app/ui/widgets/utils/drawer_user.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'drawer_items.dart';

class DrawerWidget extends StatelessWidget {
  final DrawerUser? userInfo;
  final Widget? footer;
  final List<DrawerItem> items;
  final double width;
  final AdminDrawerTheme? adminDrawerTheme;
  const DrawerWidget({
    super.key,
    required this.items,
    required this.width,
    this.userInfo,
    required this.footer,
    this.adminDrawerTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Device.height,
      width: width,
      decoration: BoxDecoration(
        color: adminDrawerTheme?.backgroundColor ??
            const Color.fromARGB(255, 12, 19, 51),
      ),
      child: Column(
        children: [
          if (userInfo != null)
            DrawerUserWidget(
              avatar: CircleAvatar(
                foregroundImage: userInfo!.image,
              ),
              userName: Text(
                userInfo!.name,
                style: TextStyle(
                    fontSize: 20,
                    color: adminDrawerTheme?.itemColor ?? Colors.white),
              ),
              email: Text(
                "Email: ${userInfo!.email!}",
                style: TextStyle(
                    fontSize: 20,
                    color: adminDrawerTheme?.itemColor ?? Colors.white),
              ),
            ),
          if (userInfo != null)
            const Divider(
              height: 0.5,
              color: Colors.black,
            ),
          DrawerItemsWidget(
            isCollapsed: false,
            itemHeight: 50,
            items: items,
            selectItemBackgroundColor: context.theme.backgroundColor,
            width: width,
            itemColor: adminDrawerTheme?.itemColor,
            selectItemColor: adminDrawerTheme?.selectItemColor,
          ),
          const Divider(),
          footer ?? const SizedBox(),
        ],
      ),
    );
  }
}
