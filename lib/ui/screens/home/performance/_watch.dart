part of 'home_view.dart';

class _Watch extends BaseView<HomeViewController> {
  const _Watch({super.key});
  @override
  Widget build(BuildContext _) => ResponsiveSizer(
        builder: (context, orientation, _) {
          return Scaffold(
            appBar: AppBar(),
            body: Container(
              color: orientation == Orientation.portrait
                  ? Colors.black
                  : Colors.blue,
              child: Center(
                  child: Text(
                "Watch Layout",
                style: TextStyle(color: Colors.white, fontSize: 25.dp),
              )),
            ),
          );
        },
      );
}
