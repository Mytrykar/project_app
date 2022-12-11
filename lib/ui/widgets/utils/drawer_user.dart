import 'package:flutter/widgets.dart';

class DrawerUser {
  final String name;
  final String? email;
  final ImageProvider? image;

  DrawerUser({
    required this.name,
    this.email,
    this.image = const AssetImage(
      "images/verify_admin.png",
    ),
  });
}
