import 'package:flutter/material.dart';
import './widgets/transaction_list.dart';

import 'models/transaction.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

final titleInput = TextEditingController();
final amountInput = TextEditingController();

class _HomepageState extends State<Homepage> {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Udemy Course'),
        ),
        titleSpacing: 9,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(
            width: double.infinity,
            height: 50,
            child: Card(
              color: Colors.red,
              child: Center(child: Text('CHART')),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(30),
            child: TextField(
              decoration: const InputDecoration(
                labelText: "Title",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
              controller: titleInput,
              //onChanged: (value) => titleInput = value,
              //dodawanie tekstu z pola tekstowego do zmiennej i później
              //wypisywanie tego tekstu za pomocą debugPrinta w przycisku
            ),
          ),
          Card(
            margin: const EdgeInsets.all(30),
            child: TextField(
              decoration: const InputDecoration(
                labelText: "Amount",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
              controller: amountInput,
              //onChanged: (value) => titleInput = value,
              //dodawanie tekstu z pola tekstowego do zmiennej i później
              //wypisywanie tego tekstu za pomocą debugPrinta w przycisku
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: () {
                debugPrint('${titleInput.text}\n${amountInput.text}'); //wypisywanie tekstu z FieldTextu
              },
              child: const Text("Dodaj"),
            ),
          ),
          TransactionList(),
        ],
      ),
    );
  }
}
