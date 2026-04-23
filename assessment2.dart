// task1
void main() {
  double price1 = 40;
  double price2 = 35;
  double price3 = 50;

  double total = price1 + price2 + price3;

  if (total > 100) {
    total += (total * 0.15);
  } else {
    total += 5;
  }

  print("Total cost: $total");

  //task2

  int age = 20;
  bool hasSubscription = true;
  String role = "user";

  bool hasAccess =
      (age > 18 && hasSubscription) || (role == "admin");

  print("Access granted: $hasAccess");

  //task3
  int number = 14;
  bool isEvenAndDivisibleBy7 =
      (number % 2 == 0) && (number % 7 == 0);

  print(isEvenAndDivisibleBy7);

  //task4
  String input1 = "Flutter";
  String input2 = "flutter";

  bool isEqual =
      input1.toLowerCase() == input2.toLowerCase();

  print(isEqual);

}