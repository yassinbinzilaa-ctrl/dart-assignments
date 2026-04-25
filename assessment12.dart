// Inheritance + Override + Nested Inheritance
class Employee {
  void work() {
    print("Employee is working");
  }
}

// يرث من Employee
class Manager extends Employee {
  @override
  void work() {
    print("Manager is managing the team");
  }
}

// يرث من Manager (Nested Inheritance)
class SeniorManager extends Manager {
  @override
  void work() {
    print("Senior Manager is making strategic decisions");
  }
}
void main() {
  Employee emp = Employee();
  Manager mgr = Manager();
  SeniorManager smgr = SeniorManager();
  emp.work();
  mgr.work();
  smgr.work();

// تابع part2
 BankAccount account = BankAccount();

  account.balance = 100;
  print(account.balance);
  account.balance = -50; //مرفوض

  account.sendNotification("Balance updated");
}
  

//part2 : Encapsulation + Getter/Setter + Mixin
// Mixin
mixin EmailNotification {
  void sendNotification(String message) {
    print("Notification sent: $message");
  }
}

class BankAccount with EmailNotification {
  // متغير خاص (private)
  double _balance = 0;

  // Getter
  double get balance => _balance;

  // Setter مع شرط
  set balance(double value) {
    if (value >= 0) {
      _balance = value;
    } else {
      print("Cannot assign negative balance!");
    }
  }
}
