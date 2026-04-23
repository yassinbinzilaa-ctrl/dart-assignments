import 'dart:math';
import 'dart:io';

// task 1
void main() {
  int hoursWorked = 45;

  if (hoursWorked >= 40) {
    print("Excellent performance");
  } else if (hoursWorked >= 30) {
    print("Good performance");
  } else if (hoursWorked >= 20) {
    print("Average performance");
  } else {
    print("Poor performance");
  }

  // task 2
   String fileType = "pdf";

  switch (fileType) {
    case "pdf":
      print("Opening PDF reader");
      break;

    case "png":
      print("Opening image viewer");
      break;

    case "docx":
      print("Opening Word processor");
      break;

    default:
      print("Unsupported file type");
  }

  // task 3 تابع
  OrderState state = OrderState.pending;

  String statusText = switch (state) {
    OrderState.pending => "قيد الانتظار",
    OrderState.processing => "قيد المعالجة",
    OrderState.completed => "مكتمل",
    OrderState.cancelled => "ملغي",
  };

  print(statusText);

  // loops
  // task 1
   List<double> prices = [10, 20, 30];

  for (var price in prices) {
    double finalPrice = price + (price * 0.15);
    print(finalPrice);
  }

  // task 2
   int secretNumber = 7;
  int randomNumber = 0;

  while (randomNumber != secretNumber) {
    randomNumber = Random().nextInt(10);
    print("Generated: $randomNumber");
  }
  print("Matched secret number!");

  // task 3
  String password;

  do {
    print("Enter password:");
    password = stdin.readLineSync()!;

    if (password.length <= 8) {
      print("Password too weak!");
    }

  } while (password.length <= 8);

  print("Strong password accepted");



}

  // task 3  
enum OrderState { pending, processing, completed, cancelled }


