import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.isCollapsed,
  }) : super(key: key);
  final Icon? icon;
  final bool isCollapsed;
  final Text? label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Row(
        mainAxisAlignment: (isCollapsed)
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceEvenly,
        children: [
          icon,
          (isCollapsed)
              ? Container()
              : AnimatedOpacity(
                  duration: const Duration(
                    seconds: 1,
                  ),
                  opacity: (isCollapsed) ? 0 : 1,
                  child: label,
                ),
        ],
      ),
    );
  }
}

class SecondDelayedAnimatedOpacity extends StatefulWidget {
  const SecondDelayedAnimatedOpacity({
    Key? key,
    required this.icon,
    required this.label,
    required this.isCollapsed,
  }) : super(key: key);
  final Icon icon;
  final bool isCollapsed;
  final Text label;

  @override
  SecondDelayedAnimatedOpacityState createState() =>
      SecondDelayedAnimatedOpacityState();
}

class SecondDelayedAnimatedOpacityState
    extends State<SecondDelayedAnimatedOpacity> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
