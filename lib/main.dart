import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: DropdownButton(
          value: _selected,
          hint: Text('Select Item'),
          items: [
            'apple',
            'banana',
            'pear'
          ].map((choice) {
            return DropdownMenuItem(
              child: Text(choice),
              value: choice,
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              _selected = value;
            });
          },
        ),
      ),
    );
  }
}
