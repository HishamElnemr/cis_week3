import 'transaction.dart';

class Invoice {
  final int invoiceId;
  final double amount;
  List<Transactions> transactions;
  Invoice({
    required this.invoiceId,
    required this.amount,
    required this.transactions,
  });

  void printInvoice() {
    print('Invoice ID: $invoiceId');
    print('Amount: $amount');
    print('Transaction: ${transactions.length}');
  }
}
