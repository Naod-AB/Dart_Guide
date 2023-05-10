class BankAccount {
  double balance = 0;

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
  final account1 = BankAccount(); //instances of a class
  final account2 = BankAccount();
  // account1.balance = 100;
  // account2.balance = 50;

  account1.deposit(50);
  account2.deposit(500);
  final withdraw1 = account1.withdraw(30);
  final withdraw2 = account2.withdraw(5000);

  print('Success: $withdraw1, balance: ${account1.balance}');
  print('Success: $withdraw2, balance: ${account2.balance}');
}
