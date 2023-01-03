part of 'screen.dart';

class _Desktop extends BaseView<ResumeController> {
  const _Desktop({super.tag, super.key});

  @override
  Widget build(BuildContext context) {
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
        actions: const [UserInAppBar()],
      ),
      backgroundColor: context.theme.backgroundColor,
      body: Stack(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: AdminDrawerWidgetDesktop(
              width: 250,
            ),
          ),
          Center(
              child: Text(
            "Desktop Layout",
            style: context.theme.textTheme.headline1,
          )),
        ],
      ),
    );
  }
}
