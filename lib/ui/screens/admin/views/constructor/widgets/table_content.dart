import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:project_app/ui/screens/admin/views/constructor/performance/screen.dart';

class TableContents extends StatefulWidget {
  final Size size;

  const TableContents({super.key, required this.size});

  @override
  State<TableContents> createState() => _TableContentsState();
}

class _TableContentsState extends State<TableContents> {
  final ConstructorController controller =
      Get.find<ConstructorController>(tag: ConstructorView.name);

  PageController pageController = PageController();
  bool selectRowsLenght = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: widget.size,
      child: Obx(() {
        return PageView.builder(
          controller: pageController,
          itemCount: controller.rows.length,
          itemBuilder: (context, index) {
            return Column(children: [
              if (!selectRowsLenght)
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () {
                          selectRowsLenght = true;
                          setState(() {});
                        },
                        child: Text(controller.pageRows.toString())),
                  ),
                ),
              if (selectRowsLenght)
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: List.generate(
                          pageContentRows.length,
                          (i) => TextButton(
                                onPressed: () {
                                  selectRowsLenght = false;
                                  controller.switchPageRows(i);
                                },
                                child: Text(
                                  pageContentRows[i].toString(),
                                  style: TextStyle(
                                      color: pageContentRows[i] ==
                                              controller.pageRows
                                          ? Colors.blue
                                          : Colors.black),
                                ),
                              )),
                    ),
                  ),
                ),
              SizedBox(
                height: widget.size.height - 200,
                width: widget.size.width,
                child: PlutoGrid(
                    // createFooter: (stateManager) {
                    //   return Container(
                    //     color: Colors.amber,
                    //   );
                    // },
                    onSelected: (event) {
                      print("ghjk");
                    },
                    mode: PlutoGridMode.select,
                    rows: controller.rows[index]!,
                    columns: controller.columns),
              ),
              Builder(builder: (context) {
                List<int> item = [];

                for (int i = index - 2; i <= index + 2; i++) {
                  if (i.isNegative) continue;
                  if (i >= controller.pages.value) continue;

                  item.add(i);
                }
                Widget pages = Row(
                  children: List.generate(item.length, (_i) {
                    return TextButton(
                        onPressed: () {
                          pageController.jumpToPage(item[_i]);
                        },
                        child: Text(
                          item[_i].toString(),
                          style: TextStyle(
                              color: item[_i] == index
                                  ? Colors.blue
                                  : Colors.black87),
                        ));
                  }),
                );

                return Align(
                  alignment: Alignment.center,
                  child: Row(children: [
                    pages,
                    Text("..."),
                    TextButton(
                      onPressed: () {
                        pageController.jumpToPage(controller.pages.value);
                      },
                      child: Text(controller.pages.value.toString()),
                    ),
                  ]),
                );
              }),
            ]);
          },
        );
      }),
    );
  }
}
