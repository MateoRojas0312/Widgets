import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container',
      home: Scaffold(
        body: Center(
          child: Container(
            // Colores
            // color: Colors.deepPurpleAccent,
            // color: const Color(0XFF00AA22),
            // color: const Color.fromARGB(255, 255, 255, 0),

            // Custom
            decoration: BoxDecoration(
                color: Colors.amber,

                // Borde
                border: Border.all(
                  color: const Color.fromARGB(255, 255, 0, 0),
                  width: 2.0,
                  style: BorderStyle.solid,
                ),
                // borderRadius: BorderRadius.circular(15.0),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(8.0),
                ),
                // shape: BoxShape.circle,

                // Sombras
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black45,
                    offset: Offset(6.0, 6.0),
                    blurRadius: 2.5,
                  ),
                  BoxShadow(
                    color: Colors.blue,
                    offset: Offset(-6.0, -6.0),
                    blurRadius: 2.5,
                  ),
                ]),

            // Tamaño
            width: 200.0,
            height: 200.0,

            // Padding
            // padding: const EdgeInsets.all(27.0),
            // padding: const EdgeInsets.fromLTRB(10.0, 5.0, 15.0, 20.0),
            padding: const EdgeInsets.only(top: 20.0),

            // Margin
            // margin: const EdgeInsets.all(20.0),
            // margin:
            // const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
            // margin: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),

            // Transformación
            transform: Matrix4.rotationZ(0.2),

            // Limites al hijo
            // constraints: const BoxConstraints(
            //   maxWidth: 100.0,
            //   maxHeight: 100.0,
            // ),

            // Contenido
            child: Text('Hola ' * 100),
          ),
        ),
      ),
    );
  }
}
