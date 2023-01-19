import 'package:flutter/widgets.dart';
import 'package:pluto_grid/pluto_grid.dart';

class PlutoGridWrapper extends StatelessWidget {
  final List<PlutoColumn> columns;
  final List<PlutoRow> rows;
  final void Function(PlutoGridOnSelectedEvent)? onSelected;
  const PlutoGridWrapper(
      {super.key, required this.columns, required this.rows, this.onSelected});

  @override
  Widget build(BuildContext context) {
    return PlutoGrid(
        onSelected: onSelected,
        configuration:
            const PlutoGridConfiguration(style: PlutoGridStyleConfig()),
        mode: PlutoGridMode.select,
        rows: rows,
        columns: columns);
  }
}
