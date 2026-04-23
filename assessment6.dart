// task1
// تعريف نوع دالة (Handler)
typedef DataHandler = void Function(Map<String, dynamic> data);

void processData(DataHandler handler) {
  Map<String, dynamic> user = {
    "name": "Ali",
    "age": 25,
  };

  handler(user);
}

void main() {
  processData((data) {
    print("User Name: ${data["name"]}");
    print("User Age: ${data["age"]}");


// تابع  task 2
    Box<int> intBox = Box<int>(10);
  intBox.setValue(20);

  print(intBox.getValue());
  });

}

// task 2
class Box<T> {
  T value;

  Box(this.value);

  void setValue(T newValue) {
    value = newValue;
  }

  T getValue() {
    return value;
  }
}