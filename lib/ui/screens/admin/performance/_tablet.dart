part of 'screen.dart';

class _Tablet extends BaseView<AdminController> {
  const _Tablet({super.tag, super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 15,
          title: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.four_k,
                      color: Colors.black26,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.desktop_windows,
                      color: Colors.black26,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Icon(Icons.tablet,
                        color: locator<ThemeServise>()
                            .current(context)
                            .currentLayoutcolor),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.phone_android,
                      color: Colors.black26,
                    ),
                  )
                ],
              )),
          actions: [
            Builder(builder: (context) {
              final DrawerUser user = DrawerUser(name: "Дмитро Пушкарьов");
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    InkWell(
                      child: Text(user.name,
                          style: const TextStyle(color: Colors.black)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: CircleAvatar(
                        foregroundImage: user.image,
                      ),
                    ),
                  ],
                ),
              );
            })
          ],
        ),
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: AnimatedAdminDrawerWidget(
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
