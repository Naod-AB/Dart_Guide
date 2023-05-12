class BankAccount {
  BankAccount(this._balance);
  double _balance; // 1. underscore make a variabe provate
//.6 defining a getter
  double get balance => _balance;
  void deposit(double amount) => _balance += amount;

  void withdraw(double amount) {
    if (_balance > amount) {
      _balance -= amount;
    }
  }
}
