import 'package:flutter/material.dart';

class DrawerUser extends StatelessWidget {
  final Size size;
  final ImageProvider? image;
  final String name;
  final String? email;
  const DrawerUser(
      {super.key,
      required this.size,
      this.image,
      required this.name,
      this.email});

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: size,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 20),
            child: SizedBox(
              width: size.height,
              height: size.height,
              child: CircleAvatar(
                foregroundImage: image ??
                    const AssetImage(
                      "images/verify_admin.png",
                    ),
                foregroundColor: Colors.white,
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  name,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              const Divider(),
              if (email != null) Text("Email: ${email!}"),
            ],
          )
        ],
      ),
    );
  }
}
