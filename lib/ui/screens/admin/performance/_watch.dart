part of 'screen.dart';

class _Watch extends BaseView<AdminController> {
  @override
  final String? tag = "AdminPanelController";
  const _Watch({super.key});
  @override
  Widget build(BuildContext _) => ResponsiveSizer(
        builder: (context, orientation, _) {
          return Scaffold(
            appBar: AppBar(
              actionsIconTheme: context.theme.appBarTheme.actionsIconTheme,
              actions: [
                const Icon(Icons.desktop_windows),
                const Icon(Icons.tablet),
                const Icon(Icons.phone_android),
                Icon(Icons.watch,
                    color: locator<ThemeServise>()
                        .current(context)
                        .currentLayoutcolor)
              ],
            ),
            backgroundColor: orientation == Orientation.portrait
                ? context.theme.backgroundColor
                : Colors.blue,
            body: Center(
                child: Text(
              "Watch Layout",
              style: context.theme.textTheme.headline1,
            )),
          );
        },
      );
}
