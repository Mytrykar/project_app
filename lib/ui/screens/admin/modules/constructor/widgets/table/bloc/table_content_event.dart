part of 'table_content_bloc.dart';

abstract class TableContentEvent extends Equatable {
  const TableContentEvent();

  @override
  List<Object> get props => [];
}

class InTableContent extends TableContentEvent {}
