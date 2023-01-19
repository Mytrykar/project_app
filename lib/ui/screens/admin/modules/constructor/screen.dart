import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:project_app/app/core/base/responsive_screen.dart';
part 'controller.dart';

class ConstructorView extends ResponsiveScreen {
  static const name = "Constructor";
  const ConstructorView({super.key = const Key("ConstructorPage")});

  @override
  Widget? desctop_4K(BuildContext? context, WidgetRef ref) =>
      LayoutBuilder(builder: (p0, p1) {
        return TableContents(
          size: Size(p1.maxWidth, p1.maxHeight),
          key: const Key("ConstructorView_Desktop_4K"),
        );
      });
  @override
  Widget? desktop(BuildContext? context, WidgetRef ref) =>
      LayoutBuilder(builder: (p0, p1) {
        return TableContents(
          size: Size(p1.maxWidth, p1.maxHeight),
          key: const Key("ConstructorView_Desktop"),
        );
      });
  // @override
  // Widget? mobile(BuildContext? context) => const TableContents(
  //       key: Key("ConstructorView_Mobile"),
  //     );
  // @override
  // Widget? tablet(BuildContext? context) => const TableContents(
  //       key: Key("ConstructorView_Tablet"),
  //     );
}
