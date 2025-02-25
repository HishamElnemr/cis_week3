import 'account.dart';
import 'atm.dart';
import 'transaction.dart';
import 'user.dart';

class Bank {
  String bankName;
  String bankAddress;
  List<User> users = [];
  List<Account> accounts = [];
  List<ATM> atms = [];
  List<Transactions> transactions = [];

  Bank({required this.bankName, required this.bankAddress});

  void addUser(User user) => users.add(user);
  void addAccount(Account account) => accounts.add(account);
  void addATM(ATM atm) => atms.add(atm);
}
