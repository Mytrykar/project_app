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
          widget = iPhone();
          break;
        case DeviseScreen.IPAD:
          widget = iPad();
          break;
        case DeviseScreen.IMAC:
          widget = iMac();
          break;
        case DeviseScreen.MACBOOK:
          widget = macBook();
          break;
      }
    } else {
      switch (responsive.activeBreakpoint.name) {
        case DeviseScreen.DESKTOP:
          widget = desktop();
          break;
        case DeviseScreen.MOBILE:
          widget = mobile();
          break;
        case DeviseScreen.DESKTOP_4K:
          widget = desctop_4K();
          break;
        case DeviseScreen.TABLET:
          widget = tablet();
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
  Widget? desctop_4K() => null;
  Widget? desktop() => null;
  Widget? mobile() => null;
  Widget? tablet() => null;

  /// Cupertino
  Widget? iPhone() => null;
  Widget? iPad() => null;
  Widget? macBook() => null;
  Widget? iMac() => null;
}
