import 'package:flutter/material.dart';

class ScreenTypeWidget extends StatelessWidget {
  final List<IconData> icons;
  final Color color;
  final int index;
  const ScreenTypeWidget(
      {super.key,
      required this.index,
      required this.icons,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: items,
      ),
    );
  }

  List<Widget> get items {
    return List.generate(
      icons.length,
      (i) => Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Icon(
          icons[i],
          color: index == i ? color : Colors.black26,
        ),
      ),
    );
  }
}
