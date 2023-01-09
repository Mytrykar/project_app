import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:project_app/app/core/base/base_controller.dart';
import 'package:project_app/app/core/base/base_screen.dart';
import 'package:project_app/ui/screens/admin/views/constructor/widgets/table_content.dart';
part 'controller.dart';

class ConstructorView extends BaseScreen<ConstructorController> {
  static const name = "Constructor";
  ConstructorView({super.key = const Key("ConstructorPage")})
      : super(
            init: ConstructorController(),
            initState: null,
            tag: ConstructorView.name);

  @override
  Widget? desctop_4K(BuildContext? context) => LayoutBuilder(builder: (p0, p1) {
        return TableContents(
          size: Size(p1.maxWidth, p1.maxHeight),
          key: const Key("ConstructorView_Desktop_4K"),
        );
      });
  @override
  Widget? desktop(BuildContext? context) => LayoutBuilder(builder: (p0, p1) {
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
