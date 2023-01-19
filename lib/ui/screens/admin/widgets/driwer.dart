import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_app/app/extensions/context.dart';
import 'package:project_app/app/services/theme_servise.dart';
import 'package:project_app/app/utils/locator.dart';
import 'package:project_app/ui/screens/admin/views/constructor/screen.dart';
import 'package:project_app/ui/widgets/dumb/drawer_widget.dart';
import 'package:project_app/ui/widgets/smart/animated_drawer.dart';
import 'package:project_app/ui/widgets/utils/drawer_item.dart';
import 'package:project_app/ui/widgets/utils/drawer_user.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

final adminDrawerProvider = StateProvider<String>(
  (ref) {
    return "Home";
  },
);

abstract class AdminDrawer extends ConsumerWidget {
  final double width;
  const AdminDrawer({required this.width, super.key});

  List<DrawerItem> items(BuildContext context) => [
        DrawerItem("Home", icon: Icons.home, item: "Home"),
        DrawerItem(ConstructorView.name,
            icon: Icons.construction, item: context.tr!.constructor),
      ];
}

class AdminDrawerWidgetMobile extends AdminDrawer {
  const AdminDrawerWidgetMobile({
    required super.width,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPage = ref.read(adminDrawerProvider.notifier);
    return DrawerWidget(
      adminDrawerTheme:
          locator<ThemeServise>().current(context).adminDrawerTheme,
      width: width,
      userInfo: DrawerUser(name: "Mitrykar", email: "sadasfasf@sdgsdg.sdfg"),
      footer: const SizedBox(),
      items: List.generate(items(context).length, (index) {
        return DrawerItem(
          items(context)[index].id,
          icon: items(context)[index].icon,
          item: items(context)[index].item,
          isSelected: currentPage.state == items(context)[index].id,
          onTap: () {
            ScaffoldState().openDrawer();
            currentPage.state = items(context)[index].id;
          },
        );
      }),
    );
  }
}

class AdminDrawerWidgetTablet extends AdminDrawer {
  const AdminDrawerWidgetTablet({required super.width, super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPage = ref.read(adminDrawerProvider.notifier);
    return AnimatedDrawerWidget(
        adminDrawerTheme:
            locator<ThemeServise>().current(context).adminDrawerTheme,
        collapsedWidth: 50,
        height: Device.height,
        width: width,
        items: List.generate(
          items(context).length,
          (index) {
            return DrawerItem(
              items(context)[index].id,
              icon: items(context)[index].icon,
              item: items(context)[index].item,
              isSelected: currentPage.state == items(context)[index].id,
              onTap: () {
                currentPage.state = items(context)[index].id;
              },
            );
          },
        ));
  }
}

class AdminDrawerWidgetDesktop extends AdminDrawer {
  const AdminDrawerWidgetDesktop({super.key, required super.width});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPage = ref.read(adminDrawerProvider.notifier);
    return DrawerWidget(
      adminDrawerTheme:
          locator<ThemeServise>().current(context).adminDrawerTheme,
      width: width,
      footer: const SizedBox(),
      items: List.generate(
        items(context).length,
        (index) {
          return DrawerItem(
            items(context)[index].id,
            icon: items(context)[index].icon,
            item: items(context)[index].item,
            isSelected: currentPage.state == items(context)[index].id,
            onTap: () {
              currentPage.state = items(context)[index].id;
            },
          );
        },
      ),
    );
  }
}
