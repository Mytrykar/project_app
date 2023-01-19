part of 'screen.dart';

class ConstructorController extends Notifier {
  /// Строки
  Map<int, List<PlutoRow>> rows = <int, List<PlutoRow>>{};

  /// Число відтворюваних строк контента
  late int pageRows;

  /// Число сторінок данних
  int pages = 0;

  @override
  void onInit() async {
    // TODO mock init
    pageRows = pageContentRows[0];
    await _initData();
    super.onInit();
  }

  final List<PlutoColumn> columns = <PlutoColumn>[
    PlutoColumn(
      title: 'Name',
      field: 'name',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'PATH',
      field: 'path',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'SEO',
      field: 'seo',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Status',
      field: 'status',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Date',
      field: 'date',
      type: PlutoColumnType.date(),
    ),
  ];

  Future<void> _initData() async {
    final data = mockPlutoRows;
    countPages(data);
  }

  void countPages(List<PlutoRow> data) {
    int start = 0;
    int page = 0;
    while (start < data.length) {
      var end = start + pageRows;
      if (end >= data.length) {
        end = data.length;
      }
      rows[page] = data.getRange(start, end).toList();
      start = end;
      page++;
    }
    pages.value = page;
  }

  void switchPageRows(int index) {
    pageRows = pageContentRows[index];
    rows.clear();
    final data = mockPlutoRows;
    countPages(data);
  }

  @override
  FutureOr build() {
    // TODO: implement build
    throw UnimplementedError();
  }
}

List<PlutoRow> mockPlutoRows = [
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
  PlutoRow(cells: {
    "name": PlutoCell(
      value: "First page content",
    ),
    "path": PlutoCell(value: "/first_page_content"),
    "seo": PlutoCell(value: ""),
    "status": PlutoCell(value: "publish"),
    "date": PlutoCell(value: DateTime.now())
  }),
];
