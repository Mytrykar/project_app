import 'package:flutter/material.dart';

class DrawerUserWidget extends StatelessWidget {
  final Widget avatar;
  final Text userName;
  final Text? email;
  const DrawerUserWidget(
      {super.key, required this.avatar, required this.userName, this.email});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 30, right: 20, top: 10, bottom: 10),
          child: CircleAvatar(
            child: avatar,
          ),
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: userName,
              ),
              if (email != null) email!
            ],
          ),
        )
      ],
    );
  }
}
