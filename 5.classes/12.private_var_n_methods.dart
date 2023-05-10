// class BankAccount {
//   BankAccount(this._balance);
//   double _balance; // 1. underscore make a variabe provate

//   void deposit(double amount) => _balance += amount;

//   void withdraw(double amount) {
//     if (_balance > amount) {
//       _balance -= amount;
//     }
//   }
// }

import '12.1.private_class.dart';

void main() {
  final account1 = BankAccount(100);
  // account1._balance = 150; // uncomment this
  // 2. this would still work because the class and main method is still in the same file,
  //so we need to separate them
  //3. after moving the class to another file, we would get an error meaning we can no longer modify it
  account1.deposit(4300);
  //4. the problem with this is we can no longer see the balance as well
  print(account1.balance);
  // 5.for this to work we need to define a getter in the class
}
