import 'package:flutter/material.dart';

class DrawerCollapse extends StatelessWidget {
  const DrawerCollapse({
    Key? key,
    required this.isCollapsed,
    required this.onTap,
  }) : super(key: key);
  final bool isCollapsed;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: IconButton(
            icon: (isCollapsed)
                ? const Icon(Icons.arrow_forward_ios)
                : const Icon(Icons.arrow_back_ios),
            color: Colors.white,
            onPressed: () => onTap(),
          ),
        ),
      ],
    );
  }
}
