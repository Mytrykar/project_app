import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

abstract class TableBuilder extends StatefulWidget {
  final int itemCount;
  final Widget Function(BuildContext context, int page) builder;
  const TableBuilder(
      {required this.builder, required this.itemCount, super.key});

  @override
  State<TableBuilder> createState();
}

class TableSwitcher extends TableBuilder {
  const TableSwitcher(
      {super.key,
      required int itemCount,
      required Widget Function(BuildContext, int) builder})
      : super(builder: builder, itemCount: itemCount);
  @override
  State<TableSwitcher> createState() => _TableSwitcherState();
}

class _TableSwitcherState extends State<TableSwitcher> {
  int _initPage = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, p1) {
        return Column(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxHeight: p1.maxHeight * 0.9, maxWidth: p1.maxWidth),
              child: widget.builder(context, _initPage),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxHeight: p1.maxHeight * 0.1, maxWidth: p1.maxWidth),
              child: Row(
                children: [
                  _pages,
                  TextButton(onPressed: () {}, child: const Text("...")),
                  TextButton(
                      onPressed: () {
                        _initPage = widget.itemCount;
                        setState(() {});
                      },
                      child: Text(
                        widget.itemCount.toString(),
                        style: const TextStyle(color: Colors.blue),
                      ))
                ],
              ),
            )
          ],
        );
      },
    );
  }

  Widget get _pages {
    List<int> pages = [];
    int pagesCount = widget.itemCount < 5 ? widget.itemCount : 5;
    if (_initPage == 0 || _initPage == 1) {
      pages = List.generate(pagesCount, (index) => index + 1);
    } else if (_initPage == widget.itemCount ||
        _initPage == widget.itemCount - 1) {
      pages = List.generate(pagesCount, (index) => widget.itemCount - index)
          .reversed
          .toList();
    } else {
      pages = List.generate(pagesCount, (index) => index + (_initPage - 1));
    }
    return Row(
      children: List.generate(
        pages.length,
        (index) => TextButton(
          onPressed: () {
            _initPage = pages[index];
            setState(() {});
          },
          child: Text(
            pages[index].toString(),
            style: TextStyle(
                color: _initPage == pages[index]
                    ? Colors.blue
                    : const Color.fromARGB(255, 78, 131, 173)),
          ),
        ),
      ),
    );
  }
}

class TableSlider extends TableBuilder {
  const TableSlider(
      {super.key,
      required int itemCount,
      required Widget Function(BuildContext, int) builder})
      : super(builder: builder, itemCount: itemCount);
  @override
  State<TableSlider> createState() => _TableSliderState();
}

class _TableSliderState extends State<TableSlider> {
  late PageController pageController;
  final CarouselController carouselController = CarouselController();
  final int _initPage = 0;
  @override
  void initState() {
    pageController = PageController(initialPage: _initPage);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (buildContext, boxConstraints) {
        return Column(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxHeight: boxConstraints.maxHeight * 0.9,
                  maxWidth: boxConstraints.maxWidth),
              child: PageView.builder(
                controller: pageController,
                itemBuilder: widget.builder,
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxHeight: boxConstraints.maxHeight * 0.1,
                  maxWidth: boxConstraints.maxWidth),
              child: CarouselSlider.builder(
                itemBuilder: (context, index, realIndex) =>
                    Text(index.toString()),
                itemCount: widget.itemCount,
                carouselController: carouselController,
                options: CarouselOptions(
                  aspectRatio: 20 / 5,
                  initialPage: _initPage,
                  onPageChanged: (index, reason) =>
                      pageController.jumpToPage(index),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
