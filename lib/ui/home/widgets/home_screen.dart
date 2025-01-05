import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTextStyle(
        style: const TextStyle(
            //TODO: Put the font style
            ),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 8.0),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Projeção Mensal'),
                      //TODO: Create the Calendar Select button
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 18.0),
                  child: const Text('Saldo restante'),
                ),
                Container(
                  child: const Row(
                    children: [
                      Text('Salário Atual'),
                      Chip(
                        avatar: CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: const Text('AB'),
                        ),
                        label: const Text('Aaron Burr'),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              height: 16,
              color: Colors.black12,
            ),
            Container(),
          ],
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
