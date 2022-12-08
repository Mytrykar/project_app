part of 'screen.dart';

class _Desktop extends BaseView<AdminController> {
  @override
  final String? tag = "AdminPanelController";
  const _Desktop({super.key});

  @override
  Widget build(BuildContext _) => ResponsiveSizer(
        builder: (context, __, _) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("M Y T R Y K A R"),
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
            body: Row(
              children: [
                SizedBox(
                    child: const ColoredBox(color: Colors.black), width: 30.w),
                Center(
                    child: Text(
                  "Desktop Layout",
                  style: context.theme.textTheme.headline1,
                )),
              ],
            ),
          );
        },
      );
}
