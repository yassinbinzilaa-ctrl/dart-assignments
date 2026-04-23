void main() {

  // task 1

  String? nullableName = null;

  String name = "Ali";

  print(nullableName);
  print(name);

  // task 2
  List<int>? list1 = null;
  List<int> list2 = [1, 2, 3];

  List<int> mergedList = [
    ...?list1,
    ...list2,
  ];

  print(mergedList);

  // Null Operators
  // task 1
  String? username;

  String displayName = username ?? "Guest";

  print(displayName);

  // task 2
  String? text;
  print(text?.length);

  // task 3
  String? name1 = "Ali";

  String safeName = name1!;

  print(safeName);


}