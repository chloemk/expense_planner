import 'package:flutter/material.dart';

import '../models/transaction.dart';
import 'transaction_item.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final void Function(String) deleteTx;

  const TransactionList(this.transactions, this.deleteTx, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: transactions.isEmpty
          ? LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                      child: Text(
                        'No transactions added yet!',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    SizedBox(
                        height: constraints.maxHeight * 0.6,
                        child: Image.asset('assets/images/waiting.png',
                            fit: BoxFit.cover)),
                  ],
                );
              },
            )
          : ListView.builder(
              itemBuilder: (context, idx) {
                return TransactionItem(
                    transaction: transactions[idx], deleteTx: deleteTx);
              },
              itemCount: transactions.length,
            ),
    );
  }
}
