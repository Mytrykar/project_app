part of 'home_view.dart';

class _Desktop extends BaseView<HomeViewController> {
  const _Desktop({super.key});

  @override
  Widget build(BuildContext _) => ResponsiveSizer(
        builder: (context, __, _) {
          return Scaffold(
            appBar: AppBar(),
            body: Container(
              color: Colors.black,
              child: Center(
                  child: Text(
                "Mobile Layout",
                style: TextStyle(color: Colors.white, fontSize: 25.dp),
              )),
            ),
          );
        },
      );
}
