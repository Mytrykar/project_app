import 'package:flutter/material.dart';

class DrawerItem {
  final String id;
  final String item;
  final IconData icon;
  final void Function()? onTap;
  late bool? isSelected;

  DrawerItem(this.id,
      {required this.item,
      required this.icon,
      this.onTap,
      this.isSelected = false});

  void checkSelected(String id) {
    if (id != this.id) return;
    isSelected = true;
  }
}
