import 'account.dart';

class User {
  int userId;
  String userName;
  num userPhone;
  int userAge;
  String userAddress;
  String password;
  bool isAuthenticated = false;
  List<Account> accounts = [];

  User({
    required this.userId,
    required this.userName,
    required this.userPhone,
    required this.userAddress,
    required this.password,
    required this.userAge,
  });

  void addAccount(Account account) {
    accounts.add(account);
  }

  bool authanticate(int pass) {
    if (pass == this.password) {
      return true;
    } else {
      print("wrong password");
      return false;
    }
  }
}
