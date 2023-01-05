import 'package:flutter/material.dart';

import 'pages.dart';

class DrawerMobileWebsite extends StatefulWidget {
  final String hoverPage;
  final void Function(String page) onPressedPage;
  const DrawerMobileWebsite(
      {super.key, required this.hoverPage, required this.onPressedPage});

  @override
  State<DrawerMobileWebsite> createState() => _DrawerMobileWebsiteState();
}

class _DrawerMobileWebsiteState extends State<DrawerMobileWebsite> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
              onPressed: () => ScaffoldState().openDrawer(),
              icon: const Icon(
                Icons.close,
                color: Colors.white,
              )),
        ),
        SizedBox(height: 20),
        ListView(
          children: List.generate(
              pages.length,
              (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        widget.onPressedPage;
                      },
                      hoverColor: Colors.black12,
                      child: Center(
                        child: Text(
                          pages[index],
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )),
        ),
      ],
    );
  }
}
