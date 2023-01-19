import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_app/app/extensions/context.dart';
import 'package:project_app/app/utils/constants.dart';

abstract class ResponsiveScreen extends ConsumerWidget {
  const ResponsiveScreen({super.key});

  @override
  @protected
  Widget build(BuildContext context, WidgetRef ref) {
    final responsive = context.responsive;
    switch (responsive.activeBreakpoint.name) {
      case DeviseScreen.DESKTOP:
        return desktop(context, ref)!;
      case DeviseScreen.MOBILE:
        return mobile(context, ref)!;
      case DeviseScreen.DESKTOP_4K:
        return desctop_4K(context, ref)!;
      case DeviseScreen.TABLET:
        return tablet(context, ref)!;
    }
    throw "${responsive.activeBreakpoint.name} not exist";
  }

  // Material
  Widget? desctop_4K(BuildContext context, WidgetRef ref) => null;
  Widget? desktop(BuildContext context, WidgetRef ref) => null;
  Widget? mobile(BuildContext context, WidgetRef ref) => null;
  Widget? tablet(BuildContext context, WidgetRef ref) => null;

  // /// Cupertino
  // Widget? iPhone(BuildContext context) => null;
  // Widget? iPad(BuildContext context) => null;
  // Widget? macBook(BuildContext context) => null;
  // Widget? iMac(BuildContext context) => null;
}
