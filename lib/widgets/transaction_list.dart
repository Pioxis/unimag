import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({super.key});

  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransactions = [
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
    return Column(
      children: _userTransactions.map((tx) {
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
    );
  }
}
