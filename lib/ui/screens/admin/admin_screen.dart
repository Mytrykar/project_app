import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_app/app/core/base/responsive_screen.dart';
import 'package:project_app/app/extensions/context.dart';
import 'package:project_app/app/services/theme_servise.dart';
import 'package:project_app/app/utils/locator.dart';
import 'package:project_app/ui/screens/admin/widgets/animated_setting.dart';
import 'package:project_app/ui/screens/admin/widgets/driwer.dart';
import 'package:project_app/ui/screens/admin/widgets/screen_type_widget.dart';
import 'package:project_app/ui/screens/admin/widgets/size_widget.dart';
import 'package:project_app/ui/screens/admin/widgets/user_in_app_bar.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AdminScreen extends ResponsiveScreen {
  static const String name = "admin-panel";
  const AdminScreen({super.key = const Key("AdminScreen")});

  @override
  Widget? desctop_4K(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: ScreenTypeWidget(
          icons: const [
            Icons.four_k,
            Icons.desktop_windows,
            Icons.tablet,
            Icons.phone_android
          ],
          color: locator<ThemeServise>().current(context).currentLayoutcolor,
          index: 0,
        ),
        actions: const [UserInAppBar()],
      ),
      backgroundColor: context.theme.backgroundColor,
      body: Row(
        children: [
          const AdminDrawerWidgetDesktop(
            width: 250,
          ),
          BouncingScrollWrapper.builder(
            context,
            Center(
                child: Text(
              "Desktop Layout",
              style: context.theme.textTheme.headline1,
            )),
          ),
        ],
      ),
    );
  }

  @override
  Widget? desktop(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 15,
        title: ScreenTypeWidget(
          icons: const [
            Icons.four_k,
            Icons.desktop_windows,
            Icons.tablet,
            Icons.phone_android
          ],
          color: locator<ThemeServise>().current(context).currentLayoutcolor,
          index: 1,
        ),
        actions: const [SizeWidget(), UserInAppBar()],
      ),
      backgroundColor: context.theme.backgroundColor,
      body: Row(
        children: [
          const AdminDrawerWidgetDesktop(
            width: 250,
          ),
          Expanded(
            child: Consumer(
              builder: (context, ref, child) {
                final currentPage = ref.watch(adminDrawerProvider);
                switch (currentPage) {
                  case ConstructorView.name:
                    return ConstructorView();
                  default:
                    return const SizedBox();
                }
              },
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget? mobile(BuildContext context, WidgetRef ref) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        width: Adaptive.w(85),
        child: AdminDrawerWidgetMobile(
          width: Adaptive.w(70),
        ),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 15,
        title: ScreenTypeWidget(
          icons: const [
            Icons.four_k,
            Icons.desktop_windows,
            Icons.tablet,
            Icons.phone_android
          ],
          color: locator<ThemeServise>().current(context).currentLayoutcolor,
          index: 3,
        ),
        actions: [
          Padding(
            padding:
                const EdgeInsets.only(right: 20, bottom: 10, left: 10, top: 10),
            child: AnimatedSetting(
              onTap: () {},
            ),
          )
        ],
      ),
      backgroundColor: context.theme.backgroundColor,
      body: Center(
          child: Text(
        "Mobile Layout",
        style: context.theme.textTheme.headline1,
      )),
    );
  }

  @override
  Widget? tablet(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 15,
        title: Align(
            alignment: Alignment.centerLeft,
            child: ScreenTypeWidget(
              icons: const [
                Icons.four_k,
                Icons.desktop_windows,
                Icons.tablet,
                Icons.phone_android
              ],
              color:
                  locator<ThemeServise>().current(context).currentLayoutcolor,
              index: 2,
            )),
        actions: const [UserInAppBar()],
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: AdminDrawerWidgetTablet(
              width: 250,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: BouncingScrollWrapper.builder(
              context,
              Center(
                  child: Text(
                "Tablet Layout",
                style: context.theme.textTheme.headline1,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
