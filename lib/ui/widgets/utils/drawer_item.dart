import 'package:flutter/material.dart';

class DrawerItem {
  final String item;
  final IconData icon;
  final void Function()? onTap;
  final bool isSelected;

  DrawerItem(
      {required this.item,
      required this.icon,
      this.onTap,
      required this.isSelected});
}
