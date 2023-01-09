part of 'screen.dart';

class _Desktop extends BaseView<AdminController> {
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
        actions: [SizeWidget(), UserInAppBar()],
      ),
      backgroundColor: context.theme.backgroundColor,
      body: Row(
        children: [
          const AdminDrawerWidgetDesktop(
            width: 250,
          ),
          Expanded(
            child: Obx(
              () {
                switch (controller.currentPage.value) {
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
}
