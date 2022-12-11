import 'package:flutter/material.dart';
import 'package:project_app/ui/widgets/utils/drawer_item.dart';
import 'package:project_app/ui/widgets/utils/drawer_user.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DrawerWidget extends StatelessWidget {
  final DrawerUser userInfo;
  final Widget? footer;
  final List<DrawerItem> items;
  final double width;
  final Color? backgroundColor;
  const DrawerWidget({
    super.key,
    required this.items,
    required this.width,
    required this.userInfo,
    required this.footer,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Device.height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        // boxShadow: [
        //   BoxShadow(
        //       spreadRadius: 0.7,
        //       blurStyle: BlurStyle.inner,
        //       offset: Offset.fromDirection(1)),
        //   BoxShadow(
        //       color: Colors.white,
        //       spreadRadius: 0.5,
        //       blurStyle: BlurStyle.inner,
        //       offset: Offset.fromDirection(1)),
        // ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 20, top: 10, bottom: 10),
                child: SizedBox(
                  width: width / 5,
                  height: width / 5,
                  child: CircleAvatar(
                    foregroundImage: userInfo.image,
                    // foregroundColor: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        userInfo.name,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                    if (userInfo.email != null)
                      Text("Email: ${userInfo.email!}"),
                  ],
                ),
              )
            ],
          ),
          const Divider(
            height: 0.5,
            color: Colors.black,
          ),
          Expanded(
              child: ListView(
                  padding: const EdgeInsets.all(5),
                  children: List.generate(
                    items.length,
                    (index) => InkWell(
                      onTap: items[index].onTap,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 15, left: 30, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Icon(items[index].icon, size: 7.w),
                            ),
                            AnimatedOpacity(
                              duration: const Duration(
                                seconds: 1,
                              ),
                              opacity: 1,
                              child: Text(items[index].item,
                                  style: TextStyle(fontSize: 7.w)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ))),
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
