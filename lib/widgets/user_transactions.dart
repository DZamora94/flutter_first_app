import 'package:flutter/material.dart';

import '../models/transaction.dart';

import './new_transaction.dart';
import './transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _transactions = [
    Transaction(
      id: 't1',
      title: 'Groceries',
      amount: 37.54,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Council Tax',
      amount: 86.50,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Sky',
      amount: 27,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Thames WaterLink',
      amount: 32.3,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String title, double amount) {
    final newTransaction = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
