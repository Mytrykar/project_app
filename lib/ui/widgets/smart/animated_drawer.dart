import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:project_app/app/core/base/base_theme.dart';
import 'package:project_app/ui/widgets/dumb/drawer_items.dart';
import 'package:project_app/ui/widgets/utils/drawer_item.dart';

class AnimatedDrawerWidget extends StatefulWidget {
  final List<DrawerItem> items;
  final double width;
  final double collapsedWidth;
  final double height;
  final AdminDrawerTheme? adminDrawerTheme;

  const AnimatedDrawerWidget({
    super.key,
    required this.items,
    required this.width,
    required this.collapsedWidth,
    this.adminDrawerTheme,
    required this.height,
  });

  @override
  State<AnimatedDrawerWidget> createState() => _AnimatedDrawerWidgetState();
}

class _AnimatedDrawerWidgetState extends State<AnimatedDrawerWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late double height;
  late double width;
  late double collapsedWidth;
  double backgroundOpacity = 0;
  bool isCollapsed = true;
  bool isCollapsedAfterSec = true;

  void initializeAnimation() {
    _controller = AnimationController(
      duration: const Duration(
        milliseconds: 500,
      ),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInCubic,
    );
    startAnimation();
  }

  void startAnimation() {
    _controller.forward();
    _animation.addListener(() {
      setState(() {
        backgroundOpacity = 0.7 * _animation.value;
      });
    });
  }

  void stopAnimation() {
    _controller.stop();
  }

  void reverseAnimation() {
    _controller.reverse();
  }

  void onCollapseTap() {
    if (isCollapsed) {
      Future.delayed(const Duration(
        milliseconds: 70,
      )).then((value) {
        setState(() {
          isCollapsedAfterSec = !isCollapsedAfterSec;
        });
      });
    } else if (!isCollapsed) {
      setState(() {
        isCollapsedAfterSec = !isCollapsedAfterSec;
      });
    }
    setState(() {
      isCollapsed = !isCollapsed;
    });
  }

  @override
  void initState() {
    super.initState();
    initializeAnimation();
    width = widget.width;
    collapsedWidth = widget.collapsedWidth;
    height = widget.height;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (_, child) {
        return AnimatedContainer(
          duration: const Duration(
            milliseconds: 70,
            // seconds: 5
          ),
          width: (isCollapsed)
              ? collapsedWidth * _animation.value
              : width * _animation.value,
          color: widget.adminDrawerTheme?.backgroundColor ??
              const Color.fromARGB(255, 12, 19, 51),
          child: (_animation.value > 0.7)
              ? Column(
                  children: [
                    if (isCollapsed)
                      if (_controller.value >= 1) _collapsedButton,
                    if (!isCollapsed)
                      Row(
                        children: [
                          const Spacer(),
                          // * Bottom Toggle Button
                          if (_controller.value >= 1) _collapsedButton
                        ],
                      ),
                    DrawerItemsWidget(
                      selectItemBackgroundColor: context.theme.backgroundColor,
                      isCollapsed: isCollapsedAfterSec,
                      itemHeight: collapsedWidth,
                      items: widget.items,
                      width: width,
                      itemColor: widget.adminDrawerTheme?.itemColor,
                      selectItemColor: widget.adminDrawerTheme?.selectItemColor,
                    )
                  ],
                )
              : const SizedBox(),
        );
      },
    );
  }

  Widget get _collapsedButton => IconButton(
        icon: (isCollapsed)
            ? const Icon(Icons.arrow_forward_ios)
            : const Icon(Icons.arrow_back_ios),
        color: Colors.white,
        onPressed: () => onCollapseTap(),
      );
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
