import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SizeWidget extends StatelessWidget {
  const SizeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
        child: Row(
          children: [
            Text("H - ${Device.height.toString()}", style: style()),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Text("W - ${Device.width.toString()}", style: style()),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle style() {
    return const TextStyle(
      color: Colors.black,
    );
  }
}
