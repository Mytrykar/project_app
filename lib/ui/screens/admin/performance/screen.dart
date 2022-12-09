import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:project_app/app/core/base/base_view.dart';
import 'package:project_app/app/extensions/context.dart';
import 'package:project_app/app/services/theme_servise.dart';
import 'package:project_app/app/utils/locator.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'controller.dart';

part '_desktop.dart';
part '_mobile.dart';
part '_tablet.dart';

class AdminScreen extends StatelessWidget {
  static const String tag = "AdminScreen";
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: AdminController(),
        autoRemove: false,
        tag: tag,
        initState: (state) => state,
        builder: (i) {
          switch (context.responsive.activeBreakpoint.name) {
            case :
              break;
            default:
          }
        });
    // screen.responsiveValue(
    //     desktop: const _Desktop(key: Key("AdminScreen_Desktop")),
    //     mobile: const _Mobile(key: Key("AdminScreen_Mobile")),
    //     tablet: const _Tablet(key: Key("AdminScreen_Tablet")),
    //     watch: const _Watch(key: Key("AdminScreen_Watch")),
    //   ))};
  }
}
