import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:project_app/app/core/base/base_screen.dart';
import 'package:project_app/app/core/base/base_view.dart';
import 'package:project_app/app/services/theme_servise.dart';
import 'package:project_app/app/utils/locator.dart';
import 'package:project_app/ui/screens/admin/views/constructor/performance/screen.dart';
import 'package:project_app/ui/screens/admin/widgets/animated_setting.dart';
import 'package:project_app/ui/screens/admin/widgets/driwer.dart';
import 'package:project_app/ui/screens/admin/widgets/screen_type_widget.dart';
import 'package:project_app/ui/screens/admin/widgets/size_widget.dart';
import 'package:project_app/ui/screens/admin/widgets/user_in_app_bar.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'controller.dart';

/// Material
part '_desktop_4k.dart';
part '_desktop.dart';
part '_mobile.dart';
part '_tablet.dart';

class AdminScreen extends BaseScreen<AdminController> {
  static const String id = "Admin-panel";
  AdminScreen({super.key})
      : super(init: AdminController(), initState: null, tag: AdminScreen.id);

  @override
  Widget? desctop_4K(BuildContext? context) => _Desktop_4K(
        key: const Key("AdminScreen_Desktop_4K"),
        tag: tag,
      );
  @override
  Widget? desktop(BuildContext? context) => _Desktop(
        key: const Key("AdminScreen_Desktop"),
        tag: tag,
      );
  @override
  Widget? mobile(BuildContext? context) => _Mobile(
        key: const Key("AdminScreen_Mobile"),
        tag: tag,
      );
  @override
  Widget? tablet(BuildContext? context) => _Tablet(
        key: const Key("AdminScreen_Tablet"),
        tag: tag,
      );
}
