part of 'screen.dart';

// ignore: camel_case_types
class _Desktop_4K extends BaseView<AdminController> {
  const _Desktop_4K({super.tag, super.key});

  @override
  Widget build(BuildContext context) {
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
          // AdminDrawerWidget(
          //   size: Size.fromWidth(Adaptive.w(30)),
          // ),
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
}
