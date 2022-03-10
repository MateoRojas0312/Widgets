import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_group_button/flutter_group_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slider',
      home: Screen(),
    );
  }
}

class Screen extends StatefulWidget {
  Screen({Key? key}) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  double rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            children: [
              SizedBox(
                width: 300,
                child: Slider(
                  value: rating,
                  onChanged: (value) {
                    setState(() {
                      rating = value;
                    });
                  },
                  divisions: 4,
                  label: '$rating',
                  min: 0,
                  max: 100,
                  activeColor: Colors.red,
                  thumbColor: Colors.green,
                ),
              ),
              Text('$rating'),
            ],
          ),
        ),
      ),
    );
  }
}
