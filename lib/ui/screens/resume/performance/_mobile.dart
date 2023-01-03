part of 'screen.dart';

class _Mobile extends BaseView<ResumeController> {
  const _Mobile({super.tag, super.key});
  @override
  Widget build(BuildContext context) {
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
}
