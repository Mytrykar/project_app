part of 'bloc.dart';

class ExampleState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class InitialState extends ExampleState {}

class LoadingState extends ExampleState {}

class DoneState extends ExampleState {
  final String data = "data";
}
