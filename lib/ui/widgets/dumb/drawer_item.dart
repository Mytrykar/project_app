import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.isCollapsed,
    this.onTap,
  }) : super(key: key);
  final Icon? icon;
  final bool isCollapsed;
  final Text? label;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8, left: 10, right: 10),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: (isCollapsed)
              ? MainAxisAlignment.center
              : MainAxisAlignment.spaceEvenly,
          children: [
            icon!,
            (isCollapsed)
                ? const SizedBox()
                : AnimatedOpacity(
                    duration: const Duration(
                      seconds: 1,
                    ),
                    opacity: (isCollapsed) ? 0 : 1,
                    child: label,
                  ),
          ],
        ),
      ),
    );
  }
}
