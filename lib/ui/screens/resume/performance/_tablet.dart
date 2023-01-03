part of 'screen.dart';

class _Tablet extends BaseView<ResumeController> {
  const _Tablet({super.tag, super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
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
