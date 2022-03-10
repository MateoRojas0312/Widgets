import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ListTile',
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isActive = true;
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text('Main Title'),
              subtitle: const Text('Subtitle'),
              trailing: const Icon(Icons.shopping_cart),
              dense: true,
              selected: true,
              enabled: true,
              onTap: () {
                print('OnTab');
              },
              onLongPress: () {
                print('onLongPress');
              },
            ),
            ListTile(
              leading: const Icon(Icons.schedule),
              title: const Text('Main Title'),
              subtitle: const Text('Subtitle'),
              trailing: const Icon(Icons.share),
              dense: true,
              selected: true,
              enabled: isActive,
              onTap: () => print('OnTab'),
              onLongPress: () => print('onLongPress'),
            )
          ],
        ),
      ),
    );
  }
}
