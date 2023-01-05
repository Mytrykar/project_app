import 'package:flutter/material.dart';

import 'page_button.dart';

const List<String> pages = ["RESUME", "BLOG", "CONTACTS"];

class PagesInAppBar extends StatelessWidget {
  final String hoverPage;
  final void Function(String page) onPressedPage;
  const PagesInAppBar(
      {super.key, required this.hoverPage, required this.onPressedPage});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
      pages.length,
      (i) => PageButton(
        isCurrentPage: hoverPage == pages[i],
        page: pages[i],
        onPressed: () => onPressedPage.call(pages[i]),
      ),
    ));
  }
}
