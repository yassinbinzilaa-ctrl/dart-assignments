void main() {
  // task 1
  print(calculateBMI(70, 1.75));

  // task 2
  showUserName("Ali");
  showUserName("Ali", "Mr.");

  // task 3
  registerUser(
    username: "Ali123",
    email: "ali@gmail.com",
  );

  // task 4
  print(counter);
  updateCounter();
  print(counter);
}


// task 1
double calculateBMI(double weight, double height) {
  double bmi = weight / (height * height);
  return bmi;
}

// task 2
void showUserName(String name, [String? title]) {
  if (title != null) {
    print("$title $name");
  } else {
    print(name);
  }
}

// task 3
void registerUser({
  required String username,
  required String email,
  int age = 18,
}) {
  print("Username: $username");
  print("Email: $email");
  print("Age: $age");
}

// task 4
int counter = 0;

void updateCounter() {
  counter++;
}

// task 5

//الشكل التقليدي
bool isPositive(int number) {
  return number > 0;
}

//Arrow Function
bool isPositive2(int number) => number > 0;

