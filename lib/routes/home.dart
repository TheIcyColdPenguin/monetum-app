import 'package:flutter/material.dart';
import 'package:monetum/data/fetch_transactions.dart';
import 'package:monetum/types/transaction.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Transaction> transactions = getTransactions();

  @override
  Widget build(BuildContext context) {
    final transactionStyle = Theme.of(context)
        .textTheme
        .bodySmall!
        .copyWith(fontWeight: FontWeight.bold);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 26, 28),
      appBar: AppBar(
        title: const Text("Home"),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 255, 187, 187),
                Color.fromARGB(255, 114, 49, 92),
              ],
              begin: Alignment(0, -8),
              end: Alignment(0, 1),
            ),
          ),
        ),
      ),
      body: ListView(
        physics: const ScrollPhysics(),
        children: transactions
            .map(
              (transaction) => Container(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 50),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(25, 255, 187, 187),
                        Color.fromARGB(25, 114, 49, 92),
                      ], begin: Alignment(0, -1), end: Alignment(0, 1)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          toLocaleCurrencyString(transaction.amount),
                          style: transactionStyle,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Paid to ${transaction.business}",
                          style: transactionStyle,
                        ),
                        Text(
                          toLocaleTimeString(transaction.timestamp),
                          style: transactionStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
