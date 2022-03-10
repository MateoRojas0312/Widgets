import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Padding',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Padding'),
        ),
        body: const SafeArea(
          child: Padding(
            // padding: EdgeInsets.only(top: 20.0),
            // padding: EdgeInsets.symmetric(vertical: 20.0),
            padding: EdgeInsets.all(6.0),
            child: Text(
              'Text',
              style: TextStyle(fontSize: 30.0),
            ),
          ),
        ),
      ),
    );
  }
}
