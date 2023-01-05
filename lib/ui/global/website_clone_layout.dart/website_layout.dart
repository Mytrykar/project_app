import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:project_app/app/core/base/base_screen.dart';
import 'package:project_app/app/utils/constants.dart';
import 'package:project_app/ui/global/website_clone_layout.dart/widgets/sing_in_buttom.dart';

import '../../../app/core/base/base_controller.dart';
import 'widgets/drawer.dart';
import 'widgets/pages.dart';

typedef ContentBuilder = List<Widget> Function(
    BuildContext context, String screenType);

class WebsiteLayoutBuilder<ContentController extends BaseController>
    extends StatelessWidget with ResponsiveMixin {
  final ContentBuilder builder;
  final String page;
  final ContentController controller;
  final void Function(GetBuilderState<ContentController>)? initState;
  const WebsiteLayoutBuilder({
    super.key,
    required this.builder,
    required this.page,
    required this.controller,
    this.initState,
  });

  @override
  Widget superControllerBilding(Widget child) => GetBuilder<ContentController>(
      global: false,
      initState: initState,
      autoRemove: true,
      init: controller,
      builder: (i) => child);

  /// Material
  @override
  Widget? desctop_4K(BuildContext? context) => superControllerBilding(
        Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              // silverappbar for gradient widget
              _appBar(
                  leading: const Center(child: Text("LOGO")),
                  title: PagesInAppBar(
                    hoverPage: page,
                    onPressedPage: (page) {},
                  )),

              SliverList(
                delegate: SliverChildListDelegate(
                  builder(context!, DeviseScreen.DESKTOP_4K),
                ),
              ),
            ],
          ),
        ),
      );
  @override
  Widget? desktop(BuildContext? context) => superControllerBilding(
        Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              // silverappbar for gradient widget
              _appBar(
                  leading: const Center(child: Text("LOGO")),
                  title: PagesInAppBar(
                    hoverPage: page,
                    onPressedPage: (page) {},
                  )),

              SliverList(
                delegate: SliverChildListDelegate(
                  builder(context!, DeviseScreen.DESKTOP),
                ),
              ),
            ],
          ),
        ),
      );
  @override
  Widget? mobile(BuildContext? context) => superControllerBilding(
        Scaffold(
          drawer: DrawerMobileWebsite(
            hoverPage: page,
            onPressedPage: (page) {},
          ),
          body: CustomScrollView(
            slivers: <Widget>[
              // silverappbar for gradient widget
              _appBar(
                leading: IconButton(
                    onPressed: () => ScaffoldState().openDrawer(),
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.black,
                    )),
              ),

              SliverList(
                delegate: SliverChildListDelegate(
                  builder(context!, DeviseScreen.MOBILE),
                ),
              ),
            ],
          ),
        ),
      );
  @override
  Widget? tablet(BuildContext? context) => superControllerBilding(
        Scaffold(
          drawer: DrawerMobileWebsite(
            hoverPage: page,
            onPressedPage: (page) {},
          ),
          body: CustomScrollView(
            slivers: <Widget>[
              // silverappbar for gradient widget
              _appBar(
                  leading: IconButton(
                      onPressed: () => ScaffoldState().openDrawer(),
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.black,
                      )),
                  title: Text("Logo")),

              SliverList(
                delegate: SliverChildListDelegate(
                  builder(context!, DeviseScreen.TABLET),
                ),
              ),
            ],
          ),
        ),
      );

  SliverAppBar _appBar({Widget? title, Widget? leading}) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 60,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          // LinearGradient
          gradient: LinearGradient(
            // colors for gradient
            colors: [
              HexColor("#4c7397"),
              HexColor("#292e33"),
            ],
          ),
        ),
      ),
      // title of appbar
      title: title,
      actions: [_sing_in()],
      leading: leading,
    );
  }

  Widget _sing_in() => SingInButton(
        icon: ImageIcon(
            AssetImage("images/sing_in.png", bundle: PlatformAssetBundle()),
            color: Colors.white),
        text: "Sing in",
        onPressed: () {},
      );
}
