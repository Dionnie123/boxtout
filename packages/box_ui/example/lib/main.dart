import 'package:box_ui/box_ui.dart';
import 'package:flutter/material.dart';

import 'example_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kcPrimaryColor,
      ),
      home: const ExampleView(),
    );
  }
}
