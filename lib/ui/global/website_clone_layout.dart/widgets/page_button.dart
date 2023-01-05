import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

class PageButton extends StatefulWidget {
  final String page;
  final bool isCurrentPage;
  final void Function()? onPressed;
  const PageButton(
      {super.key,
      required this.page,
      required this.isCurrentPage,
      required this.onPressed});

  @override
  State<PageButton> createState() => _PageButtonState();
}

class _PageButtonState extends State<PageButton> {
  bool onHover = false;

  @override
  void initState() {
    if (widget.isCurrentPage) onHover = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: widget.onPressed,
        onHover: (value) {
          if (!widget.isCurrentPage) {
            onHover = value;
            setState(() {});
          }
        },
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                  width: 2, color: onHover ? Colors.blue : Colors.transparent),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child:
                Text(widget.page, style: const TextStyle(color: Colors.black)),
          ),
        ),
      ),
    );
  }
}
