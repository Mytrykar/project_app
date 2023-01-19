import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_app/ui/widgets/utils/drawer_user.dart';

class UserInAppBar extends ConsumerWidget {
  const UserInAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
