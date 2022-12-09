import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

class DrawerLayout extends StatelessWidget {
  final List<Widget> children;
  final Size size;
  const DrawerLayout({super.key, required this.children, required this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: size,
      child: Drawer(
        backgroundColor: context.theme.drawerTheme.backgroundColor,
        elevation: 2,
        shape: const Border(right: BorderSide()),
        child: ListView(padding: const EdgeInsets.all(5), children: children),
      ),
    );
  }
}
