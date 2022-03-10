import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Estados',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [SinEstado(), ConEstado()],
          ),
        ),
      ),
    );
  }
}

class SinEstado extends StatelessWidget {
  const SinEstado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      padding: const EdgeInsets.all(20.0),
      child: const Center(
        child: Text(
          'Sin Estado',
          style: TextStyle(
            fontSize: 40.0,
          ),
        ),
      ),
    );
  }
}

class ConEstado extends StatefulWidget {
  const ConEstado({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => Estado();
}

class Estado extends State<ConEstado> {
  bool? _activo;

  @override
  void initState() {
    super.initState();
    _activo = false;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _activo = !_activo!;
        });
      },
      child: Container(
        color: _activo! ? Colors.blue : Colors.grey,
        padding: const EdgeInsets.all(20.0),
        child: const Center(
          child: Text(
            'Con Estado',
            style: TextStyle(
              fontFamily: 'Press Start 2P',
              fontSize: 40.0,
            ),
          ),
        ),
      ),
    );
  }
}
