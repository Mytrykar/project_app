import 'package:flutter/material.dart';

class ErrorBuildViewWidget extends StatelessWidget {
  const ErrorBuildViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Oops...", style: TextStyle(color: Colors.red)),
    );
  }
}
