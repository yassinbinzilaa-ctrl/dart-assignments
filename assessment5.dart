// task 1
void main() {
  List<String> employees = ["Ali", "Sara", "Omar"];

  employees.add("Mona");
  employees.add("Khaled");

  employees.removeAt(1);

  employees.sort();
  print(employees);

  // task 2

   Map<String, int> studentRecord = {
    "Math": 90,
    "English": 85,
    "Science": 95,
  };

  List<String> subjects = studentRecord.keys.toList();
  print(subjects);

  // task 3

  (bool, String, int) checkOperation() {
  bool success = false;
  String message = "Something went wrong";
  int code = 404;

  return (success, message, code);
}
  var result = checkOperation();

  print(result.$1); // الحالة
  print(result.$2); // الرسالة
  print(result.$3); // الكود

}