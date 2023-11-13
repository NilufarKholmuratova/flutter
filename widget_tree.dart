// widget_tree.dart
import 'package:flutter/material.dart';

class LevelOneWidget extends StatelessWidget {
  final String title;

  LevelOneWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber, // Changed container color
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24.0, // Increased font size
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20.0), // Increased space
          LevelTwoWidget(),
        ],
      ),
    );
  }
}

class LevelTwoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal, // Changed container color
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Level Two',
            style: TextStyle(
              fontSize: 20.0, // Increased font size
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20.0), // Increased space
          CounterWidget(),
        ],
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo, // Changed container color
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Counter Value: $counter',
            style: TextStyle(
              fontSize: 18.0, // Increased font size
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20.0), // Increased space
          ElevatedButton(
            onPressed: _incrementCounter,
            style: ElevatedButton.styleFrom(
              primary: Colors.orange, // Changed button color
            ),
            child: Text('Increment Counter'),
          ),
        ],
      ),
    );
  }
}

class YourWidgetTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LevelOneWidget('Colorful Level One');
  }
}
