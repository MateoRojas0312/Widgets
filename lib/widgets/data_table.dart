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
      title: 'DataTable',
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  Screen({Key? key}) : super(key: key);

  final List<String> moto = ['Suzuki', '2010', '8000'];

  final List<String> columns = ['Moto', 'Modelo', 'Precio'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DataTable(
          // columns: const [
          //   DataColumn(
          //     label: Text(
          //       'Moto',
          //       style: TextStyle(color: Colors.red),
          //     ),
          //   ),
          //   DataColumn(
          //     label: Text('Modelo'),
          //   ),
          //   DataColumn(
          //     label: Text('Precio'),
          //   ),
          // ],
          columns:
              columns.map((item) => DataColumn(label: Text(item))).toList(),
          rows: [
            DataRow(
                // cells: [
                //   DataCell(
                //     Text('Suzuki'),
                //   ),
                //   DataCell(
                //     Text('2010'),
                //   ),
                //   DataCell(
                //     Text('5000'),
                //   ),
                // ],
                cells: moto.map((item) => DataCell(Text(item))).toList()),
            const DataRow(cells: [
              DataCell(
                Text('Honda'),
              ),
              DataCell(
                Text('2021'),
              ),
              DataCell(
                Text('2000'),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
