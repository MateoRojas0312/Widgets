import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextField',
      home: Screen(),
    );
  }
}

class Screen extends StatefulWidget {
  Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  String name = '';
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    textEditingController.text = 'Juan';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const Text(
              'Por favor agregue su información',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    width: 220.0,
                    child: TextField(
                      controller: textEditingController,
                      keyboardType: TextInputType.name,
                      autocorrect: true,
                      maxLength: 10,
                      // obscureText: true,
                      cursorColor: Colors.pink,
                      style:
                          const TextStyle(fontSize: 20.0, color: Colors.blue),
                      textInputAction: TextInputAction.done,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Escribir',
                        // border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7.0),
                          ),
                          borderSide: BorderSide(color: Colors.pink),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    name,
                    style: const TextStyle(fontSize: 20.0),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  SizedBox(
                    width: 220.0,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: true,
                      cursorColor: Colors.pink,
                      style: TextStyle(fontSize: 20.0, color: Colors.blue),
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: 'Email',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7.0),
                          ),
                          borderSide: BorderSide(color: Colors.pink),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  SizedBox(
                    width: 220.0,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      autocorrect: true,
                      cursorColor: Colors.pink,
                      style: TextStyle(fontSize: 20.0, color: Colors.blue),
                      textInputAction: TextInputAction.done,
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: 'Password',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7.0),
                          ),
                          borderSide: BorderSide(color: Colors.pink),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  SizedBox(
                    width: 220.0,
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      autocorrect: true,
                      cursorColor: Colors.pink,
                      style: TextStyle(fontSize: 20.0, color: Colors.blue),
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        icon: Icon(Icons.phone),
                        hintText: 'Phone',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7.0),
                          ),
                          borderSide: BorderSide(color: Colors.pink),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('Change: $name');
                print('Editing: ${textEditingController.text}');
              },
              child: const Text('OK'),
            )
          ],
        ),
      ),
    );
  }
}
