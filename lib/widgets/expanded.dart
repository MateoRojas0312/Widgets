import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
                  height: 200,
                  child: const Center(child: Text('Rojo')),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.green,
                  height: 50,
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  color: Colors.blue, 
                  height: 70,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
