import 'package:intl/intl.dart';

class Transaction {
  double amount;
  String business;
  bool debited;
  DateTime timestamp;

  Transaction({
    required this.amount,
    required this.business,
    required this.debited,
    required this.timestamp,
  });
}

String toLocaleTimeString(DateTime timestamp) {
  final date = DateFormat.yMMMMd().format(timestamp);
  final time = DateFormat.jm().format(timestamp).toLowerCase();
  return "on $date $time";
}

String toLocaleCurrencyString(double amount) {
  return NumberFormat.simpleCurrency(locale: 'en-IN').format(amount);
}
