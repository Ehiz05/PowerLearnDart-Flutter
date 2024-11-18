class BarclaysBank {
  String _savingsAccountName;
  double _balance = 4;

  BarclaysBank(this._savingsAccountName, double initialBalance) {
    if (initialBalance < 0) {
      throw ArgumentError(
          "Negative value! Please input amount greater than zero. ");
    }
    _balance = initialBalance;
  }

  // Using getter to get details
  String get savingsAccountName => _savingsAccountName;

  // Using getter for the balance
  double get balance => _balance;

  // Credit function
  void credit(double amount) {
    if (amount <= 0) {
      throw ArgumentError(
          "Negative value! Please input amount greater than zero. ");
    }
    _balance += amount;
    print("Account credit is successful. Available balance: \$$_balance");
  }

  // Withdraw function
  void withdraw(double amount) {
    if (amount <= 0) {
      throw ArgumentError(
          "Negative value! Please input amount greater than zero. ");
    }
    if (amount > _balance) {
      throw Exception("Insufficient funds!");
    }
    _balance -= amount;
    print("Withdrawal successful. Remaining balance: \$$_balance");
  }
}

void main() {
  // Account creation function
  var account = BarclaysBank("Vladamir Putin", 100.0);

  print("Account Holder: ${account.savingsAccountName}");
  print("Initial Balance: \$${account.balance}");

  // Deposit money
  account.credit(370.0);

  // Withdraw money
  account.withdraw(110.0);
}
