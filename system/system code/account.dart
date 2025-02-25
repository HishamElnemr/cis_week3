import 'transaction.dart';
import 'user.dart';

class Account {
  int accountId;
  double balance = 0;
  User user;
  List<Transactions> transactions = [];

  Account({required this.accountId, required this.user});
  String deposit(double amount) {
    balance += amount;

    transactions.add(
      Transactions(
        transactionId: transactions.length + 1,
        amount: amount,
        date: DateTime.now(),
        type: 'Deposit',
      ),
    );

    print("Deposited $amount to account and balance is ${this.balance} now.");
    return "success";
  }

  String withdraw(double amount) {
    if (this.balance >= amount) {
      transactions.add(
        Transactions(
          transactionId: transactions.length + 1,
          amount: amount,
          date: DateTime.now(),
          type: 'Withdraw',
        ),
      );
      this.balance -= amount;
      print(
        "Withdrawed $amount from account and balance is ${this.balance} now.",
      );
      return "Success";
    } else {
      print("Not enough balance to withdraw.");
      return "Failure";
    }
  }
}
