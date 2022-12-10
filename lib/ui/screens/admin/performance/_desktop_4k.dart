part of 'screen.dart';

// ignore: camel_case_types
class _Desktop_4K extends BaseView<AdminController> {
  const _Desktop_4K({super.tag, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("M Y T R Y K A R"),
        actionsIconTheme: context.theme.appBarTheme.actionsIconTheme,
        actions: [
          Icon(Icons.four_k,
              color:
                  locator<ThemeServise>().current(context).currentLayoutcolor),
          const Icon(
            Icons.desktop_windows,
          ),
          const Icon(Icons.tablet),
          const Icon(Icons.phone_android),
          const Icon(Icons.watch)
        ],
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
