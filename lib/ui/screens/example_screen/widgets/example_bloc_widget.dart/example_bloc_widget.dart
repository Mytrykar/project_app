import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_app/app/core/base/base_bloc_widget.dart';
import 'package:project_app/ui/screens/example_screen/performance/screen_controller.dart';
import 'package:project_app/ui/screens/example_screen/widgets/example_bloc_widget.dart/bloc/bloc.dart';

class ExampleBlocWidget extends BaseBlocWidget<ExampleScreenController> {
  const ExampleBlocWidget({super.key});

  @override
  State<ExampleBlocWidget> createState() => _ExampleBlocWidgetState();
}

class _ExampleBlocWidgetState extends State<ExampleBlocWidget> {
  ExampleBloc bloc = ExampleBloc();

  @override
  void initState() {
    bloc.add(GetApiEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExampleBloc, ExampleState>(
      bloc: bloc,
      listener: (context, state) {},
      builder: (context, state) {
        return Text(state is DoneState ? state.data : "");
      },
    );
  }
}
