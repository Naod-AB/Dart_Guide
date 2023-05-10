class BankAccount {
  BankAccount({
    required this.accountHolder, // 2.constructor arguments
    this.balance = 0,
  });
  final String accountHolder; // making accountholder not changable or final
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

  account1.balance = 100;
  // account1.accountHolder = 'Owner 3'; this won't be able to change
  print('Account 1: ${account1.balance}, Account 2: ${account2.balance}');
}
