import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  List city = ['Bogota', 'Cali', 'Funza'];

  var valueSelected = 'Cali';

  @override
  Widget build(BuildContext context) {
    void choiceAction(choice) {
      if (choice == Item.Inbox) {
        print('Go To Inbox');
      } else if (choice == Item.Email) {
        print('Go to Eail');
      } else if (choice == Item.SingOut) {
        print('SingOut');
      }
    }

    return MaterialApp(
      title: 'Botones',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Botones'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            PopupMenuButton(
              onSelected: choiceAction,
              itemBuilder: (BuildContext context) {
                return Item.choices.map((choice) {
                  return PopupMenuItem(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              const Center(
                child: Text(
                  'Botones',
                  style: TextStyle(fontSize: 25.0),
                ),
              ),
              TextButton(
                // style: ButtonStyle(
                //   backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                //   foregroundColor:
                //       MaterialStateProperty.all<Color>(Colors.white),
                // ),
                onPressed: () {
                  print('TextButon');
                },
                child: const Text('TextButton'),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green)),
                onPressed: () {
                  print('ElevatedButton');
                },
                child: const Text('ElevatedButton'),
              ),
              OutlinedButton(
                // style: ElevatedButton.styleFrom(
                //   primary: Colors.amber,
                //   textStyle: const TextStyle(fontWeight: FontWeight.bold),
                // ),
                onPressed: () {
                  print('OutlinedButton');
                },
                child: const Text('OutinedButton'),
              ),
              OutlinedButton.icon(
                onPressed: () {
                  print('OutlinedButton');
                },
                icon: const Icon(Icons.add),
                label: const Text('OutlinedButton'),
              ),
              IconButton(
                color: Colors.blue,
                tooltip: 'Eliminar objeto',
                onPressed: () {
                  print('IconButton');
                },
                icon: const Icon(Icons.delete),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Carros'),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Aviones'),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Trenes'),
                  ),
                ],
              ),
              DropdownButton(
                value: valueSelected,
                onChanged: (value) {
                  setState(() {
                    valueSelected = value.toString();
                  });
                },
                items: city.map((item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('FloatingActionButton');
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class Item {
  static const Inbox = 'Inbox';
  static const Email = 'Email';
  static const SingOut = 'SingOut';

  static const List choices = [Inbox, Email, SingOut];
}
