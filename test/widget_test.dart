// This is a basic Flutter widget project_app.
//
// To perform an interaction with a widget in your project_app, use the Widgetproject_apper
// utility in the flutter_project_app package. For example, you can send tap and scroll
// gestures. You can also use Widgetproject_apper to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_project_app/flutter_project_app.dart';

import 'package:project_app/main.dart';

void main() {
  project_appWidgets('Counter increments smoke project_app',
      (Widgetproject_apper project_apper) async {
    // Build our app and trigger a frame.
    await project_apper.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await project_apper.tap(find.byIcon(Icons.add));
    await project_apper.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
