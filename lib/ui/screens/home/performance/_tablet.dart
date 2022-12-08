part of 'screen.dart';

class _Tablet extends GetView<HomeViewController> {
  const _Tablet({super.key});
  @override
  Widget build(BuildContext _) => ResponsiveSizer(
        builder: (context, orientation, _) {
          return Scaffold(
            appBar: AppBar(
              actionsIconTheme: context.theme.appBarTheme.actionsIconTheme,
              actions: [
                const Icon(Icons.desktop_windows),
                Icon(Icons.tablet,
                    color: locator<ThemeServise>()
                        .current(context)
                        .currentLayoutcolor),
                const Icon(Icons.phone_android),
                const Icon(Icons.watch)
              ],
            ),
            backgroundColor: orientation == Orientation.portrait
                ? context.theme.backgroundColor
                : Colors.blue,
            body: Center(
                child: Text(
              "Tablet Layout",
              style: context.theme.textTheme.headline1,
            )),
          );
        },
      );
}
