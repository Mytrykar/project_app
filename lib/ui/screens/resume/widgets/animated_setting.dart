import 'package:flutter/material.dart';

class AnimatedSetting extends StatefulWidget {
  final void Function() onTap;
  const AnimatedSetting({super.key, required this.onTap});

  @override
  State<AnimatedSetting> createState() => _AnimatedSettingState();
}

class _AnimatedSettingState extends State<AnimatedSetting>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool onHover = false;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 7));
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      return InkWell(
        onTap: () {},
        onHover: (value) {
          if (value == onHover) return;
          onHover = value;
          setState(() {});
        },
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, widget) {
            return Transform.rotate(
              angle: _controller.value * 6.3,
              child: Icon(
                Icons.settings,
                size: constrains.maxHeight,
                color: onHover ? Colors.blue : Colors.grey,
              ),
            );
          },
        ),
      );
    });
  }
}
