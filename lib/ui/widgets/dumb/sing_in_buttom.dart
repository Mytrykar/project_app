import 'package:flutter/material.dart';

class SingInButton extends StatelessWidget {
  final String text;
  final IconData iconData;
  final void Function()? onPressed;
  const SingInButton(
      {super.key, required this.text, required this.iconData, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style:
          ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) {
        if (states.contains(MaterialState.hovered) ||
            states.contains(MaterialState.focused)) {
          return Colors.indigo[800]!;
        }
        return Colors.blue;
      })),
      onPressed: onPressed,
      icon: Icon(iconData, color: Colors.white),
      label: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }
}
