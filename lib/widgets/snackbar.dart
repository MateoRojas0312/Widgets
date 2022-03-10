import 'package:flutter/cupertino.dart';
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
      title: 'Snackbar',
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
  _showSnackBar() {
    final snackBar = SnackBar(
      content: Row(
        children: const [
          Icon(Icons.thumb_up),
          SizedBox(width: 10.0),
          Text('Compra realizada')
        ],
      ),
      backgroundColor: Colors.blue,
      duration: const Duration(seconds: 3),
      action: SnackBarAction(
        label: 'label',
        onPressed: () {
          print('Di click en label');
        },
        textColor: Colors.white,
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: _showSnackBar,
              child: const Text('Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}
