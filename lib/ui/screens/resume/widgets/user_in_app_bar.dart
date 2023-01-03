import 'package:flutter/material.dart';
import 'package:project_app/app/core/base/base_controller.dart';
import 'package:project_app/app/core/base/base_widget.dart';
import 'package:project_app/ui/screens/admin/performance/controller.dart';
import 'package:project_app/ui/widgets/utils/drawer_user.dart';

class UserInAppBar extends BaseWidget<AdminController, BaseController> {
  const UserInAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final DrawerUser user = DrawerUser(name: "Дмитро Пушкарьов");
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Row(
        children: [
          InkWell(
            child: Text(user.name, style: const TextStyle(color: Colors.black)),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CircleAvatar(
              foregroundImage: user.image,
            ),
          ),
        ],
      ),
    );
  }
}
