class Car {
  // خاصية لا تتغير بعد الإنشاء
  final String brand;

  // خاصية عادية
  String model;

  // ثابت على مستوى الكلاس
  static const int numberOfWheels = 4;

  // Constructor
  Car(this.brand, this.model);
}

void main() {
  Car car1 = Car("Toyota", "Corolla");

  print("Brand: ${car1.brand}");
  print("Model: ${car1.model}");
  print("Wheels: ${Car.numberOfWheels}");
}
