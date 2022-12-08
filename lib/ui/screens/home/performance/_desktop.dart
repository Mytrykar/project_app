part of 'screen.dart';

class _Desktop extends BaseView<HomeViewController> {
  const _Desktop({super.key});

  @override
  Widget build(BuildContext _) => ResponsiveSizer(
        builder: (context, __, _) {
          return Scaffold(
            appBar: AppBar(
              actionsIconTheme: context.theme.appBarTheme.actionsIconTheme,
              actions: [
                Icon(Icons.desktop_windows,
                    color: locator<ThemeServise>()
                        .current(context)
                        .currentLayoutcolor),
                const Icon(Icons.tablet),
                const Icon(Icons.phone_android),
                const Icon(Icons.watch)
              ],
            ),
            backgroundColor: context.theme.backgroundColor,
            body: Center(
                child: Text(
              "Desktop Layout",
              style: context.theme.textTheme.headline1,
            )),
          );
        },
      );
}
