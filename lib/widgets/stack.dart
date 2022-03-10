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
      title: 'Stack',
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  final TextStyle style = const TextStyle(color: Colors.black, fontSize: 16.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // child: Stack(
        //   children: [
        //     Align(
        //       alignment: Alignment.centerLeft,
        //       child: Container(
        //         color: Colors.teal,
        //         width: 100.0,
        //         height: 100.0,
        //       ),
        //     ),
        //     Align(
        //       alignment: Alignment.bottomCenter,
        //       child: Container(
        //         color: Colors.yellow,
        //         width: 100.0,
        //         height: 100.0,
        //       ),
        //     ),
        //     Positioned(
        //       top: 220.0,
        //       left: 60.0,
        //       child: Container(
        //         color: Colors.blue,
        //         width: 100.0,
        //         height: 100.0,
        //       ),
        //     )
        //   ],
        // ),

        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/gato.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Gato',
                        style: style.copyWith(fontSize: 25.0),
                      ),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
                        style: style,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
