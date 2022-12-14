import 'package:flutter/material.dart';
import 'package:project_app/ui/widgets/utils/drawer_item.dart';

class DrawerItemsWidget extends StatelessWidget {
  final List<DrawerItem> items;
  final Color selectItemBackgroundColor;
  final double width;
  final double itemHeight;
  final bool isCollapsed;
  final Color? selectItemColor;
  final Color? itemColor;
  const DrawerItemsWidget(
      {super.key,
      required this.items,
      required this.selectItemBackgroundColor,
      required this.width,
      required this.itemHeight,
      required this.isCollapsed,
      this.selectItemColor,
      this.itemColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        children: List.generate(
          items.length,
          (index) => InkWell(
            onTap: items[index].onTap,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 5,
              ),
              child: Column(
                children: [
                  ClipPath(
                    clipper: OpenClipper(),
                    child: Container(
                      color: items[index].isSelected!
                          ? selectItemBackgroundColor
                          : null,
                      height: itemHeight,
                      width: width,
                      child: !isCollapsed
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(items[index].icon,
                                    color:
                                        _itemColor(items[index].isSelected!)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    items[index].item,
                                    style: TextStyle(
                                        color: _itemColor(
                                            items[index].isSelected!)),
                                  ),
                                )
                              ],
                            )
                          : Icon(items[index].icon,
                              color: _itemColor(items[index].isSelected!)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color _itemColor(bool isSelected) =>
      isSelected ? selectItemColor ?? Colors.blue : itemColor ?? Colors.white;
}

class OpenClipper extends CustomClipper<Path> {
  final double? wingsWidth;
  final double? wingsHeight;

  OpenClipper({this.wingsHeight = 10, this.wingsWidth = 10});
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..moveTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..arcToPoint(Offset(size.width - wingsWidth!, size.height - wingsHeight!),
          radius: Radius.circular(wingsWidth!), clockwise: false)
      // ..lineTo(size.width - wingsWidth!, size.height - wingsHeight!)
      ..lineTo(wingsWidth!, size.height - wingsHeight!)
      ..arcToPoint(Offset(0, size.height / 2),
          radius: Radius.circular(wingsHeight!), clockwise: true)
      // ..lineTo(0, size.height / 2)
      ..arcToPoint(Offset(wingsWidth!, wingsHeight!),
          radius: Radius.circular(wingsHeight!), clockwise: true)
      // ..lineTo(wingsWidth!, wingsHeight!)
      ..lineTo(size.width - wingsWidth!, wingsHeight!)
      ..arcToPoint(Offset(size.width, 0),
          radius: Radius.circular(wingsWidth!), clockwise: false)
      // ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
