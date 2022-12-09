import 'package:flutter/material.dart';
import 'package:project_app/ui/widgets/dumb/drawer_collapse.dart';

class AnimatedDrawerWidget extends StatefulWidget {
  final List<Widget> children;
  const AnimatedDrawerWidget(
      {Key? key, required this.closeFunction, required this.children})
      : super(key: key);
  final Function closeFunction;

  @override
  // ignore: library_private_types_in_public_api
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<AnimatedDrawerWidget>
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
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(
        backgroundOpacity,
      ),
      body: Row(
        children: [
          AnimatedBuilder(
            animation: _animation,
            builder: (ctx, child) {
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
                    ? Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          DrawerUser(
                            afterCollapse: 'AW',
                            beforeCollapse: 'Aashar Wahla',
                            isCollapsed: isCollapsed,
                          ),

                          DrawerItem(
                            icon: const Icon(
                              Icons.bookmarks,
                              color: Colors.white,
                              size: 35,
                            ),
                            label: const Text(
                              'Item 1',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            isCollapsed: isCollapsedAfterSec,
                          ),
                          DrawerItem(
                            icon: const Icon(
                              Icons.bookmarks,
                              color: Colors.white,
                              size: 35,
                            ),
                            label: const Text(
                              'Item 2',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            isCollapsed: isCollapsedAfterSec,
                          ),
                          DrawerItem(
                            icon: const Icon(
                              Icons.bookmarks,
                              color: Colors.white,
                              size: 35,
                            ),
                            label: const Text(
                              'Item 3',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            isCollapsed: isCollapsedAfterSec,
                          ),
                          DrawerItem(
                            icon: const Icon(
                              Icons.bookmarks,
                              color: Colors.white,
                              size: 35,
                            ),
                            label: const Text(
                              'Item 4',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            isCollapsed: isCollapsedAfterSec,
                          ),
                          DrawerItem(
                            icon: const Icon(
                              Icons.bookmarks,
                              color: Colors.white,
                              size: 35,
                            ),
                            label: const Text(
                              'Item 5',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            isCollapsed: isCollapsedAfterSec,
                          ),
                          DrawerItem(
                            icon: const Icon(
                              Icons.bookmarks,
                              color: Colors.white,
                              size: 35,
                            ),
                            label: const Text(
                              'Item 6',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            isCollapsed: isCollapsedAfterSec,
                          ),
                          DrawerItem(
                            icon: const Icon(
                              Icons.bookmarks,
                              color: Colors.white,
                              size: 35,
                            ),
                            label: const Text(
                              'Item 7',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            isCollapsed: isCollapsedAfterSec,
                          ),
                          const Spacer(),
                          // * Bottom Toggle Button
                          if (_controller.value >= 1)
                            DrawerCollapse(
                              isCollapsed: isCollapsed,
                              onTap: onCollapseTap,
                            ),
                        ],
                      )
                    : const SizedBox(),
              );
            },
          ),

          // * The left area on the side which will used
          // * to close the drawer when tapped
        ],
      ),
    );
  }
}
