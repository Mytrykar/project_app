import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SingInButton extends StatelessWidget {
  final String text;
  final Widget icon;
  final void Function()? onPressed;
  const SingInButton(
      {super.key, required this.text, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton.icon(
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
            backgroundColor: MaterialStateColor.resolveWith((states) {
              if (states.contains(MaterialState.hovered) ||
                  states.contains(MaterialState.focused)) {
                return HexColor("#478ac9");
              }
              return HexColor("#259bca");
            })),
        onPressed: onPressed,
        icon: icon,
        label: Text(text,
            style: const TextStyle(color: Colors.white, fontSize: 16)),
      ),
    );
  }
}
