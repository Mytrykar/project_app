import 'package:flutter/material.dart';

class DrawerItem {
  final String id;
  final String? item;
  final IconData? icon;
  final void Function()? onTap;
  late bool? isSelected;

  DrawerItem(this.id,
      {this.item, this.icon, this.onTap, this.isSelected = false});
}
