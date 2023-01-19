import 'package:pluto_grid/pluto_grid.dart';

class TableColumns {
  static final PlutoColumn name = PlutoColumn(
    title: 'Name',
    field: 'name',
    type: PlutoColumnType.text(),
  );

  static final PlutoColumn seo = PlutoColumn(
    title: 'SEO',
    field: 'seo',
    type: PlutoColumnType.text(),
  );

  static final PlutoColumn status = PlutoColumn(
    title: 'Status',
    field: 'status',
    type: PlutoColumnType.text(),
  );

  static final PlutoColumn date = PlutoColumn(
    title: 'Date',
    field: 'date',
    type: PlutoColumnType.date(),
  );
}
