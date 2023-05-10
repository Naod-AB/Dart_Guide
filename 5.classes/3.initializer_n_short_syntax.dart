class BankAccount {
// initializer
  // BankAccount({
  //   required String accountHolder, // 2.constructor arguments
  //   double balance = 0,
  // })  :
  //       // 3. to assign constructor arguments to memeber varibales we use initializer list, this keyword is not needed here
  //       accountHolder = accountHolder,
  //       balance = balance;
  BankAccount({
    required this.accountHolder, // 2.constructor arguments
    this.balance = 0,
  });
  String accountHolder; // 1. member variables
  double balance;

  // Shorter syntax

  void deposit(double amount) => balance += amount;
  bool withdraw(double amount) {
    if (balance > amount) {
      balance -= amount;
      return true;
    }
    return false;
  }
}

void main() {
  final account1 = BankAccount(balance: 100, accountHolder: 'Owner1');
  final account2 = BankAccount(balance: 5000, accountHolder: 'Owner2');

  print('Account 1: ${account1.balance}, Account 2: ${account2.balance}');
}
