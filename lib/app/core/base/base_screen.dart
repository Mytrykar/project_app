import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:project_app/app/core/base/base_controller.dart';
import 'package:project_app/app/extensions/context.dart';
import 'package:project_app/app/utils/constants.dart';

abstract class BaseScreen<T extends BaseController> extends StatelessWidget
    with ResponsiveMixin {
  const BaseScreen({super.key});
}

mixin ResponsiveMixin on Widget {
  @protected
  Widget build(BuildContext context) {
    final responsive = context.responsive;
    Widget? widget;
    if (!kIsWeb && defaultTargetPlatform == TargetPlatform.macOS ||
        defaultTargetPlatform == TargetPlatform.iOS) {
      switch (responsive.activeBreakpoint.name) {
        case DeviseScreen.IPHONE:
          widget = iPhone(context);
          break;
        case DeviseScreen.IPAD:
          widget = iPad(context);
          break;
        case DeviseScreen.IMAC:
          widget = iMac(context);
          break;
        case DeviseScreen.MACBOOK:
          widget = macBook(context);
          break;
      }
    } else {
      switch (responsive.activeBreakpoint.name) {
        case DeviseScreen.DESKTOP:
          widget = desktop(context);
          break;
        case DeviseScreen.MOBILE:
          widget = mobile(context);
          break;
        case DeviseScreen.DESKTOP_4K:
          widget = desctop_4K(context);
          break;
        case DeviseScreen.TABLET:
          widget = tablet(context);
          break;
      }
    }
    assert(widget != null,
        "No implementation for screen ${responsive.activeBreakpoint.name}");
    return widget ?? const SizedBox();
  }

  // @override
  // Widget superControllerBilding(Widget child) => GetBuilder(
  //     init: AdminController(),
  //     autoRemove: false,
  //     tag: tag,
  //     initState: (state) => state,
  //     builder: (i) => child);
  Widget superControllerBilding(Widget child);

  /// Material
  Widget? desctop_4K(BuildContext? context) => null;
  Widget? desktop(BuildContext? context) => null;
  Widget? mobile(BuildContext? context) => null;
  Widget? tablet(BuildContext? context) => null;

  /// Cupertino
  Widget? iPhone(BuildContext? context) => null;
  Widget? iPad(BuildContext? context) => null;
  Widget? macBook(BuildContext? context) => null;
  Widget? iMac(BuildContext? context) => null;
}
