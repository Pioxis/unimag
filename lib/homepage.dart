import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './transaction.dart';



class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

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
          Container(
            width: double.infinity,
            height: 50,
            child: const Card(
              color: Colors.red,
              child: Center(child: Text('CHART')),
            ),
          ),
          Column(
            children: transactions.map((tx) {
              return ListTile(
                title: Text(tx.title),
                subtitle: Text(DateFormat('dd.MM.y | HH:mm:ss').format(tx.date)),
                leading: Column(
                  children: <Widget>[
                    const Icon(
                      Icons.monetization_on_outlined,
                      color: Colors.green,
                    ),
                    Text(
                      tx.amount.toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                isThreeLine: true,
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
