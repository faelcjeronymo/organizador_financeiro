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
      child: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: double.infinity),
        child: Theme(
          data: Theme.of(context).copyWith(
              dividerTheme: DividerThemeData(
                  color: Colors.transparent,
                  space: 0,
                  thickness: 0,
                  indent: 0,
                  endIndent: 0)),
          child: DataTable(
            dataRowMaxHeight: double.infinity,
            horizontalMargin: 0.0,
            headingTextStyle: const TextStyle(
              fontSize: 16.0,
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
            rows: <DataRow>[
              DataRow(cells: <DataCell>[
                DataCell(
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(217, 217, 217, 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                          child: const Icon(
                            Icons.credit_card,
                            size: 20.0,
                            color: Color.fromRGBO(124, 124, 124, 1.0),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Nome da compra",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Tipo da compra",
                              style: TextStyle(
                                color: Colors.black38,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                DataCell(Text(
                  '- R\$ 59,00',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                  ),
                ))
              ])
            ],
          ),
        ),
      ),
    );
  }
}
