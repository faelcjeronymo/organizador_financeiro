import 'package:flutter/material.dart';

class ExpensesDataTable extends StatefulWidget {
  const ExpensesDataTable({super.key});

  @override
  State<ExpensesDataTable> createState() => _ExpensesDataTableState();
}

class _ExpensesDataTableState extends State<ExpensesDataTable> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DataTable(
        horizontalMargin: 0.0,
        headingTextStyle: const TextStyle(
          fontSize: 18.0,
          color: Colors.black54,
        ),
        columns: const <DataColumn>[
          DataColumn(
            label: Expanded(child: Text('Descrição')),
          ),
          DataColumn(
            label: Text('Valor'),
          ),
        ],
        rows: <DataRow>[],
      ),
    );
  }
}
