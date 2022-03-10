import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      home: Scaffold(
        body: Center(
          child: SizedBox(
            height: 150.0,
            width: 300.0,
            child: Text(
              'Un texto ' * 30,
              // textDirection: TextDirection.rtl,
              textScaleFactor: 1.0,
              textAlign: TextAlign.center,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 25.0,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
                // decoration: TextDecoration.underline,
                decorationColor: Colors.blue,
                decorationThickness: 1,
                // decorationStyle: TextDecorationStyle.wavy,
                // backgroundColor: Colors.amber,
                // shadows: [
                //   Shadow(
                //     color: Colors.black,
                //     offset: Offset(3.0, 3.0),
                //     blurRadius: 2.0,
                //   ),
                // ],
                letterSpacing: 0,
                wordSpacing: 0,
                // height: 1.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
