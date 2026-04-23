// task 1
void main() {
  (String, double, double) location =
      ("Sana'a", 44.2067, 15.3694);

  var (city, longitude, latitude) = location;

  print("City: $city");
  print("Longitude: $longitude");
  print("Latitude: $latitude");


  // task 2
  List<int> numbers = [10, 20, 30, 40, 50];

  var [first, ...rest, last] = numbers;

  print("First: $first");
  print("Last: $last");


  // task 3
  Map<String, dynamic> response = {
    "status": "success",
    "data": "User data loaded"
  };

  switch (response) {
    case {"status": "success", "data": var dataValue}:
      print("Data: $dataValue");

    case {"status": "failure"}:
      print("Error occurred");

    default:
      print("Unknown response");
  }

  // task 4
  var obj = [0, 99];

  if (obj case [0, _,]) {
    print("List starts with 0 and has exactly 2 elements");
  } else {
    print("Condition not met");
  }

}