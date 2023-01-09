import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/app/core/base/base_controller.dart';
import 'package:project_app/app/extensions/context.dart';
import 'package:project_app/app/utils/constants.dart';

abstract class BaseScreen<T extends BaseController> extends StatelessWidget {
  final T init;
  final void Function(GetBuilderState<T>)? initState;
  final String? tag;

  const BaseScreen({required this.init, this.initState, super.key, this.tag});

  Widget _bildingController(Widget child) => GetBuilder<T>(
      init: init,
      autoRemove: false,
      tag: tag,
      initState: initState,
      builder: (i) => child);

  @override
  @protected
  Widget build(BuildContext context) {
    final responsive = context.responsive;
    // if (!kIsWeb && defaultTargetPlatform == TargetPlatform.macOS ||
    //     defaultTargetPlatform == TargetPlatform.iOS) {
    //   switch (responsive.activeBreakpoint.name) {
    //     case DeviseScreen.IPHONE:
    //       return _bildingController(iPhone(context)!);
    //     case DeviseScreen.IPAD:
    //       return _bildingController(iPad(context)!);
    //     case DeviseScreen.IMAC:
    //       return _bildingController(iMac(context)!);
    //     case DeviseScreen.MACBOOK:
    //       return _bildingController(macBook(context)!);
    //   }
    // } else {
    switch (responsive.activeBreakpoint.name) {
      case DeviseScreen.DESKTOP:
        return _bildingController(desktop(context)!);
      case DeviseScreen.MOBILE:
        return _bildingController(mobile(context)!);
      case DeviseScreen.DESKTOP_4K:
        return _bildingController(desctop_4K(context)!);
      case DeviseScreen.TABLET:
        return _bildingController(tablet(context)!);
    }
    // }
    throw "${responsive.activeBreakpoint.name} not exist";
  }

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
