import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:project_app/ui/widgets/dumb/pluto_grid_wrapper.dart';

import 'bloc/table_content_bloc.dart';

class TableContents extends StatefulWidget {
  final List<PlutoColumn> columns;
  final int itemCount;
  final void Function(PlutoGridOnSelectedEvent)? onSelected;

  const TableContents(
      {super.key,
      required this.columns,
      required this.itemCount,
      this.onSelected});

  @override
  State<TableContents> createState() => _TableContentsState();
}

class _TableContentsState extends State<TableContents> {
  final TableContentBloc bloc = TableContentBloc();
  @override
  void initState() {
    initBloc();
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TableContentBloc, TableContentState>(
      bloc: bloc,
      builder: (context, state) {
        if (state is TableContentInitial) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return PlutoGridWrapper(
            onSelected: widget.onSelected,
            rows: widget.rows,
            columns: widget.columns);
      },
    );
  }

  void initBloc() {
    bloc.add(InTableContent());
  }
}
