import 'package:flutter/material.dart';
import 'package:project_app/ui/widgets/dumb/drawer_collapse.dart';
import 'package:project_app/ui/widgets/dumb/drawer_item.dart';
import 'package:project_app/ui/widgets/dumb/drawer_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AnimatedDrawerWidget extends StatefulWidget {
  final double width;
  final List<DrawerItem> children;
  final Widget header;
  final Widget headerCollapsed;
  final Widget footer;
  const AnimatedDrawerWidget({
    super.key,
    required this.children,
    required this.header,
    required this.footer,
    required this.width,
    required this.headerCollapsed,
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
    height = Device.height;
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
          ),
          width: (isCollapsed)
              ? width * .2 * _animation.value
              : width * .5 * _animation.value,
          margin: EdgeInsets.only(
            left: width * .06 * _animation.value,
            top: height * .05,
            bottom: height * .05,
          ),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
          child: (_animation.value > 0.7)
              ? DrawerWidget(
                  width: widget.width,
                  header: widget.header,
                  footer: Column(
                    children: [
                      widget.footer,
                      Row(
                        children: [
                          const Spacer(),
                          // * Bottom Toggle Button
                          if (_controller.value >= 1)
                            DrawerCollapse(
                              isCollapsed: isCollapsed,
                              onTap: onCollapseTap,
                            ),
                        ],
                      ),
                    ],
                  ),
                  children: List.generate(
                      widget.children.length,
                      (index) => DrawerItem(
                            icon: widget.children[index].icon,
                            label: widget.children[index].label,
                            isCollapsed: isCollapsed,
                            onTap: widget.children[index].onTap,
                          )),
                )
              : const SizedBox(),
        );
      },
    );
  }
}
// width: width,
//       backgroundColor: context.theme.drawerTheme.backgroundColor,
//       shape: const Border(right: BorderSide()),