import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Icons',
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Icon(
              Icons.fullscreen,
              size: 80,
              color: Colors.amber,
            ),
          ),
        ),
      ),
    );
  }
}
