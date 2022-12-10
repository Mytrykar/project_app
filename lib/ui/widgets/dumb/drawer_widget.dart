import 'package:flutter/material.dart';
import 'package:project_app/ui/widgets/dumb/drawer_item.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DrawerWidget extends StatelessWidget {
  final Widget header;
  final Widget? footer;
  final List<DrawerItem> children;
  final double width;
  const DrawerWidget(
      {super.key,
      required this.children,
      required this.width,
      required this.header,
      required this.footer});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Device.height,
      width: width,
      child: Column(
        children: [
          header,
          const Divider(),
          Expanded(
              child: ListView(
                  padding: const EdgeInsets.all(5), children: children)),
          const Divider(),
          footer ?? const SizedBox(),
        ],
      ),
    );
  }
}
// width: width,
//       backgroundColor: context.theme.drawerTheme.backgroundColor,
//       shape: const Border(right: BorderSide()),
