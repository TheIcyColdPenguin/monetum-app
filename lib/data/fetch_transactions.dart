import 'package:monetum/types/transaction.dart';

List<Transaction> getTransactions() {
  return [
    Transaction(
      amount: 200,
      business: "Amazon India",
      debited: true,
      timestamp: DateTime.parse("2023-06-03 15:34:12.54"),
    ),
    Transaction(
      amount: 400,
      business: "Chaayos",
      debited: true,
      timestamp: DateTime.parse("2023-06-03 15:32:12.54"),
    ),
    Transaction(
      amount: 200,
      business: "Saaransh Jain",
      debited: false,
      timestamp: DateTime.parse("2023-05-03 05:34:12.54"),
    ),
  ];
}
