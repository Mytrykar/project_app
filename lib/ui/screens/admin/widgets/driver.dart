import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:project_app/app/core/base/base_controller.dart';
import 'package:project_app/app/core/base/base_widget.dart';
import 'package:project_app/ui/screens/admin/performance/controller.dart';

abstract class AdminDraver extends BaseWidget<AdminController, BaseController> {
  const AdminDraver({super.key});
  @override
  // ignore: overridden_fields
  final String? superTag = "Admin";
}

class AdminDraverDesktop extends AdminDraver {
  const AdminDraverDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        // decoration: BoxDecoration(
        //   color:
        // ),
        );
  }
}
