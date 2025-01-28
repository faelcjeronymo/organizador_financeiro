import 'package:flutter/material.dart';
import 'package:organizador_financeiro/ui/home/widgets/expenses_data_table.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: DefaultTextStyle(
            style: const TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w600,
                fontSize: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Projeção Mensal',
                          style: TextStyle(fontSize: 22.0),
                        ),
                        //TODO: Create the Calendar Select button
                      ],
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const Text(
                      'Saldo restante',
                      style: TextStyle(color: Colors.black54),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const Text(
                      'R\$ 1000,00', //TODO: put the final amount
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 48.0,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        const Text(
                          'Salário Atual',
                          style: TextStyle(color: Colors.black54),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Container(
                          //TODO: This can be an reusable widget
                          padding:
                              const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color.fromARGB(255, 193, 243, 231),
                          ),
                          child: const Text(
                            'R\$ 3000,00',
                            style: TextStyle(
                              color: Color.fromARGB(255, 15, 148, 116),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  height: 48,
                  color: Colors.black12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 4.0),
                      child: const Text(
                        'Despesas',
                        style: TextStyle(fontSize: 22.0),
                      ),
                    ),
                    ExpensesDataTable()
                  ],
                ),
              ],
            ),
          ),
        ),
      ), //TODO: Create home page body
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('Ok'), //TODO: Create function
        tooltip: 'Adicionar Despesa',
        child: const Icon(Icons.add),
      ),
    );
  }
}
