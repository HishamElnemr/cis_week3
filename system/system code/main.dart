import 'account.dart';
import 'atm.dart';
import 'bank.dart';
import 'user.dart';

void main() {
  Bank bank = Bank(
    bankName: "Bank of Egypt",
    bankAddress: "Mansoura",
  );
  bank.addUser(
    User(
      userId: 1,
      userName: "Hisham",
      userPhone: 0126848,
      userAddress: "Mansoura",
      password: "1234",
      userAge: 21,
    ),
  );

  bank.addAccount(
    Account(
      accountId: 021256,
      user: bank.users[0],
    ),
  );

  bank.addATM(
    ATM(
      atmId: 21354864,
      availableCash: 100234,
      location: 'Mansoura',
    ),
  );

  print(bank.accounts[0].user.userName);

  User user = bank.users[0];
  user.addAccount(
    Account(
      accountId: 151545,
      user: bank.users[0],
    ),
  );

  print(user.accounts[0].user.userName);

  Account account = user.accounts[0];
  account.deposit(1000);
  // account.withdraw(2000);
  print(account.balance);
  print(account.transactions[0].date);
  account.transactions[0].getInvoice()[0].printInvoice();
}
