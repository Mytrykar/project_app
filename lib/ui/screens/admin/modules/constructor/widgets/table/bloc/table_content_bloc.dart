import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'table_content_event.dart';
part 'table_content_state.dart';

class TableContentBloc extends Bloc<TableContentEvent, TableContentState> {
  TableContentBloc() : super(TableContentInitial()) {
    on<TableContentEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
