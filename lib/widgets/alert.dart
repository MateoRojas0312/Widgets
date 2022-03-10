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
      title: 'Alert',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                showAlert(context);
              },
              child: const Text('Alert'),
            ),
            ElevatedButton(
              onPressed: () {
                showCupertinoAlert(context);
              },
              child: const Text('Cupertino Alert'),
            ),
          ],
        ),
      ),
    );
  }
}

void showAlert(BuildContext context) {
  var alertDialog = AlertDialog(
    title: const Text('Titulo de la alerta'),
    content: const Text('Este es el contenido de la alerta'),
    // content: const SizedBox(width: 200.0, child: TextField()),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('No'),
      ),
      TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Si'),
      ),
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) => alertDialog,
  );
}

void showCupertinoAlert(BuildContext context) {
  var cupertinoAlert = CupertinoAlertDialog(
    title: const Text('Titulo cupertino'),
    content: const Text('Contenido de cupertino'),
    actions: [
      CupertinoButton(
        child: const Text('No'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      CupertinoButton(
        child: const Text('Si'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) => cupertinoAlert,
  );
}
