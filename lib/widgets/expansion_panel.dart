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
      title: 'Expanded Panel',
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
  final List<MyItem> _items = [
    MyItem(isExpanded: true, header: 'Header 1', body: 'Body 1'),
    MyItem(isExpanded: false, header: 'Header 2', body: 'Body 2'),
    MyItem(isExpanded: true, header: 'Header 3', body: 'Body 3'),
    MyItem(isExpanded: false, header: 'Header 4', body: 'Body 4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expansion Panel'),
      ),
      body: ListView(
        children: [
          ExpansionPanelList(
            dividerColor: Colors.pink,
            expandedHeaderPadding: const EdgeInsets.all(8.0),
            expansionCallback: (index, isExpanded) {
              setState(() {
                _items[index].isExpanded = !_items[index].isExpanded;
              });
            },
            children: _items
                .map(
                  (MyItem item) => ExpansionPanel(
                    backgroundColor: Colors.green,
                    canTapOnHeader: true,
                    headerBuilder: (context, isExpanded) => Text(
                      isExpanded
                          ? item.header!
                          : 'Sin Expandir ${item.header!}',
                      style: const TextStyle(
                        fontSize: 30.0,
                        color: Colors.blue,
                      ),
                    ),
                    body: Text(
                      item.body!,
                      style: const TextStyle(fontSize: 20.0),
                    ),
                    isExpanded: item.isExpanded,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class MyItem {
  bool isExpanded;
  String? header, body;

  MyItem({required this.isExpanded, this.header, this.body});
}
