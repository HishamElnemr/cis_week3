import 'invoice.dart';

class Transactions {
  int transactionId;
  double amount;
  DateTime date;
  String type;
  List<Invoice> invoices = [];

  Transactions(
      {required this.transactionId,
      required this.amount,
      required this.date,
      required this.type}) {
    invoices.add(
      Invoice(
        invoiceId: transactionId,
        amount: amount,
        transactions: [this],
      ),
    );
  }

  List<Invoice> getInvoice() => invoices;
}
