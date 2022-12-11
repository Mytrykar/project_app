import 'package:flutter/material.dart';
import 'package:project_app/ui/widgets/utils/drawer_item.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AnimatedDrawerWidget extends StatefulWidget {
  final List<DrawerItem> items;
  final double width;
  final Color? backgroundColor;
  const AnimatedDrawerWidget({
    super.key,
    required this.items,
    required this.width,
    this.backgroundColor,
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
              // milliseconds: 70,
              seconds: 5),
          width: (isCollapsed)
              ? width / 5 * _animation.value
              : width * _animation.value,
          color: const Color.fromARGB(255, 12, 19, 51),
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
                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        children: List.generate(
                          widget.items.length,
                          (index) => InkWell(
                            onTap: widget.items[index].onTap,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: !isCollapsed
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(widget.items[index].icon,
                                            color: Colors.white),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Text(
                                            widget.items[index].item,
                                            style: const TextStyle(
                                                // fontSize: 30,
                                                color: Colors.white),
                                          ),
                                        )
                                      ],
                                    )
                                  : Icon(widget.items[index].icon,
                                      color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : const SizedBox(),
        );
      },
    );
  }

  Widget get _divider {
    if (isCollapsed) return const SizedBox();
    return const Divider();
  }

  Widget get _collapsedButton => IconButton(
        icon: (isCollapsed)
            ? const Icon(Icons.arrow_forward_ios)
            : const Icon(Icons.arrow_back_ios),
        color: Colors.white,
        onPressed: () => onCollapseTap(),
      );
}
