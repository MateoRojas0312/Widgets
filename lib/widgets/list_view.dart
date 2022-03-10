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
      title: 'ListView',
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  Screen({Key? key}) : super(key: key);

  final List<String> entries = ['A', 'B', 'C'];
  final List<int> colorCodes = [600, 500, 100];

  final List<String> names = ['Anderson', 'Juan', 'Pedro', 'Johana'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),

      // body: ListView.separated(
      //   itemBuilder: (context, index) => SizedBox(
      //     height: 50.0,
      //     child: Center(
      //       child: Text('Nombre: ${names[index]}'),
      //     ),
      //   ),
      //   separatorBuilder: (context, index) => Divider(
      //     color: index == 2 ? Colors.blue : Colors.red,
      //     height: 5.0,
      //     thickness: 3.0,
      //   ),
      //   itemCount: names.length,
      // ),

      body: ListView.builder(
        padding: const EdgeInsets.all(10.0),
        scrollDirection: Axis.horizontal,
        itemCount: entries.length,
        itemBuilder: (constext, index) {
          return Container(
            height: 10.0,
            width: 200.0,
            color: Colors.amber[colorCodes[index]],
            child: Center(
              child: Text('Entrada: ${entries[index]}'),
            ),
          );
        },
      ),

      // body: ListView(
      //   children: [
      //     ListTile(
      //       leading: const Icon(Icons.phone),
      //       title: const Text('Main Title'),
      //       subtitle: const Text('Subtitle'),
      //       trailing: const Icon(Icons.shopping_cart),
      //       onTap: () => print('Tap'),
      //       enabled: false,
      //     ),
      //     ListTile(
      //       leading: const Icon(Icons.phone),
      //       title: const Text('Main Title'),
      //       subtitle: const Text('Subtitle'),
      //       trailing: const Icon(Icons.shopping_cart),
      //       onTap: () => print('Tap'),
      //       selected: true,
      //     ),
      //     const Image(
      //       image: AssetImage('assets/gato.jpg'),
      //       height: 300,
      //     ),
      //     const Text('Soy un texto'),
      //     Row(
      //       children: const [
      //         Icon(Icons.home),
      //         Text('Texto en row'),
      //       ],
      //     ),
      //     ListTile(
      //       leading: const Icon(Icons.phone),
      //       title: const Text('Main Title'),
      //       subtitle: const Text('Subtitle'),
      //       trailing: const Icon(Icons.shopping_cart),
      //       onTap: () => print('Tap'),
      //       selected: true,
      //     ),
      //     ListTile(
      //       leading: const Icon(Icons.phone),
      //       title: const Text('Main Title'),
      //       subtitle: const Text('Subtitle'),
      //       trailing: const Icon(Icons.shopping_cart),
      //       onTap: () => print('Tap'),
      //       selected: true,
      //     ),
      //     ListTile(
      //       leading: const Icon(Icons.phone),
      //       title: const Text('Main Title'),
      //       subtitle: const Text('Subtitle'),
      //       trailing: const Icon(Icons.shopping_cart),
      //       onTap: () => print('Tap'),
      //       selected: true,
      //     ),
      //     ListTile(
      //       leading: const Icon(Icons.phone),
      //       title: const Text('Main Title'),
      //       subtitle: const Text('Subtitle'),
      //       trailing: const Icon(Icons.shopping_cart),
      //       onTap: () => print('Tap'),
      //       selected: true,
      //     ),
      //     ListTile(
      //       leading: const Icon(Icons.phone),
      //       title: const Text('Main Title'),
      //       subtitle: const Text('Subtitle'),
      //       trailing: const Icon(Icons.shopping_cart),
      //       onTap: () => print('Tap'),
      //       selected: true,
      //     ),
      //     ListTile(
      //       leading: const Icon(Icons.phone),
      //       title: const Text('Main Title'),
      //       subtitle: const Text('Subtitle'),
      //       trailing: const Icon(Icons.shopping_cart),
      //       onTap: () => print('Tap'),
      //       selected: true,
      //     ),
      //     ListTile(
      //       leading: const Icon(Icons.phone),
      //       title: const Text('Main Title'),
      //       subtitle: const Text('Subtitle'),
      //       trailing: const Icon(Icons.shopping_cart),
      //       onTap: () => print('Tap'),
      //       selected: true,
      //     ),
      //     ListTile(
      //       leading: const Icon(Icons.phone),
      //       title: const Text('Main Title'),
      //       subtitle: const Text('Subtitle'),
      //       trailing: const Icon(Icons.shopping_cart),
      //       onTap: () => print('Tap'),
      //       selected: true,
      //     ),
      //     ListTile(
      //       leading: const Icon(Icons.phone),
      //       title: const Text('Main Title'),
      //       subtitle: const Text('Subtitle'),
      //       trailing: const Icon(Icons.shopping_cart),
      //       onTap: () => print('Tap'),
      //       selected: true,
      //     ),
      //   ],
      // ),
    );
  }
}
