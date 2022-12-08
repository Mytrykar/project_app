part of 'home_view.dart';

class _Desktop extends BaseView<HomeViewController> {
  const _Desktop({super.key});
  @override
  Widget build(BuildContext _) => ResponsiveSizer(
        builder: (context, orientation, _) {
          return Scaffold(
            appBar: AppBar(),
            body: Container(
              color: orientation == Orientation.portrait
                  ? Colors.black
                  : Colors.blue,
            ),
          );
        },
      );
}
