import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Switch',
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
  bool _value = false;

  void _onChange(value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
              children: [
                Switch(
                  activeColor: Colors.green,
                  activeTrackColor: Colors.yellow,
                  inactiveThumbColor: Colors.blue,
                  inactiveTrackColor: Colors.pink,
                  value: _value,
                  onChanged: _onChange,
                ),
                Text('Valor: $_value')
              ],
            )),
      ),
    );
  }
}
