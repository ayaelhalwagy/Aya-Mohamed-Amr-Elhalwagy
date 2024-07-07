class BankAccount {
  final String owner;
  num balance;

  BankAccount({required this.owner, required this.balance});

  void deposit(num amount) {
    balance += amount;
    print("New balance: $balance");
  }

  void withdraw(num amount) {
    try {
      if (amount <= balance) {
        balance -= amount;
        print("New balance: $balance");
      } else {
        throw HandleOverDrawn;
      }
    } catch (e) {
      print("$amount can't be withdrawn");
    }
  }
}

class HandleOverDrawn implements Exception {
}

void main() {
  BankAccount account1 = BankAccount(owner: "Aya", balance: 1000);

  account1.deposit(500);
  account1.withdraw(2500);
}