import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_app/app/core/base/base_widget.dart';
import 'package:project_app/ui/screens/home/performance/controller.dart';
import 'package:project_app/ui/screens/home/view/driver/controller.dart';

class DriwerView extends BaseWidget<HomeViewController, DriverController> {
  @override
  final String? tag = "DriverController";
  const DriwerView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: controller.scrollController,
      children: _children,
    );
  }

  List<Widget> get _children {}
}
