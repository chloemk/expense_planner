import 'package:flutter/material.dart';

import './transaction.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1',
        title: 'New Shoes for dog',
        amount: 69.99,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Weekly Groceries',
        amount: 16.53,
        date: DateTime.now())
  ];

  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            color: Colors.blue,
            elevation: 5,
            child:
                Container(width: double.infinity, child: const Text('Chart!')),
          ),
          Column(
            children: transactions
                .map((transaction) => Card(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.purple, width: 2)),
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              '\$${transaction.amount}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.purple),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                transaction.title,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text(
                                transaction.date.toString(),
                                style: const TextStyle(color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
