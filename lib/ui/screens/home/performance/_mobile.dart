part of 'screen.dart';

class _Mobile extends GetView<HomeViewController> {
  const _Mobile({super.key});
  @override
  Widget build(BuildContext _) => ResponsiveSizer(
        builder: (context, orientation, _) {
          return Scaffold(
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
