part of 'screen.dart';

class _Mobile extends BaseView<AdminController> {
  const _Mobile({super.tag, super.key});
  @override
  Widget build(BuildContext _) => ResponsiveSizer(
        builder: (context, orientation, _) {
          return Scaffold(
            drawer: AdminDraverDesktop(
              size: Size.fromWidth(Adaptive.w(95)),
            ),
            appBar: AppBar(
              actionsIconTheme: context.theme.appBarTheme.actionsIconTheme,
              actions: [
                const Icon(Icons.desktop_windows),
                const Icon(Icons.tablet),
                Icon(Icons.phone_android,
                    color: locator<ThemeServise>()
                        .current(context)
                        .currentLayoutcolor),
                const Icon(Icons.watch)
              ],
            ),
            backgroundColor: orientation == Orientation.portrait
                ? context.theme.backgroundColor
                : Colors.blue,
            body: Center(
                child: Text(
              "Mobile Layout",
              style: context.theme.textTheme.headline1,
            )),
          );
        },
      );
}
