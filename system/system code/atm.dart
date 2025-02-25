import 'user.dart';

class ATM {
  int atmId;
  double availableCash;
  String location;

  ATM({required this.atmId, required this.availableCash,required this.location});

  String deposit(double amount, User user) {
    availableCash += amount;
    user.accounts[0].deposit(amount);
    return "Successfully deposited $amount to account and balance is ${user.accounts[0].balance} now.";
  }

  String withdraw(double amount, User user) {
    if (availableCash >= amount && user.accounts[0].balance >= amount) {
      availableCash -= amount;
     user.accounts[0].withdraw(amount);
      return "Successfully withdrew $amount from account and balance is ${user.accounts[0].balance} now.";
    } else {
      return "Not enough cash to withdraw.";
    }
  }

  double getAvailableCash() => availableCash;
}
