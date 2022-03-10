import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image',
      home: Scaffold(
        body: Center(
          child: Container(
            width: 320.0,
            height: 320.0,
            // color: Colors.yellow,
            padding: const EdgeInsets.all(8.0),

            decoration: const BoxDecoration(
              color: Colors.yellow,
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/gato.jpg',
                ),
              ),
            ),

            // Imagenes de la aplicación
            // child: Image.asset(
            //   'assets/gato.jpg',
            //   // fit: BoxFit.cover,
            //   scale: 8.0,
            //   alignment: Alignment.topRight,
            // ),

            // Imagen de internet
            // child: Image.network(
            //   'https://cdn.pixabay.com/photo/2021/09/29/06/19/flowers-6666411_960_720.jpg',
            //   // fit: BoxFit.contain,
            //   repeat: ImageRepeat.noRepeat,
            //   scale: 5.0,
            //   alignment: Alignment.topLeft,
            // ),
          ),
        ),
      ),
    );
  }
}
