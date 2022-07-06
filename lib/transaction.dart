// Widget으로 사용하는 것이 아님

class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  // named argument
  Transaction(
      {required this.id,
      required this.title,
      required this.amount,
      required this.date});
}
