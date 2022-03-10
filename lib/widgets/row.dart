import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
      color: Colors.blue,
    );

    return MaterialApp(
      title: 'Row',
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  'Uno',
                  style: style.copyWith(color: Colors.red, fontSize: 40.0),
                ),
                Text(
                  'Dos',
                  style: style.copyWith(color: Colors.green, fontSize: 30.0),
                ),
                const Text(
                  'Tres',
                  style: style,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
