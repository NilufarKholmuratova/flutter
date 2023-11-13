// main.dart
import 'package:flutter/material.dart';
import 'widget_tree.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Colorful Counter App'),
          backgroundColor: Colors.deepPurple, // Changed app bar color
        ),
        body: YourWidgetTree(),
      ),
    );
  }
}
