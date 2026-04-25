// 1️⃣ Enum
enum UserRole { admin, user, guest }

// 2️⃣ Base class
class User {
  final String name;
  final UserRole role;

  User(this.name, this.role);

  void getPermissions() {
    print("$name has basic access");
  }
}

// 3️⃣ Admin
class Admin extends User {
  Admin(String name) : super(name, UserRole.admin);

  @override
  void getPermissions() {
    print("$name has full access");
  }
}

// 4️⃣ Normal User
class NormalUser extends User {
  NormalUser(String name) : super(name, UserRole.user);

  @override
  void getPermissions() {
    print("$name has limited access");
  }
}

// 5️⃣ Guest
class Guest extends User {
  Guest(String name) : super(name, UserRole.guest);

  @override
  void getPermissions() {
    print("$name has guest access");
  }
}

// 6️⃣ Callable Object
class Validator {
  bool call(String input) {
    return input.isNotEmpty && input.length >= 5;
  }
}

void main() {
  // 🔹 Polymorphism
  List<User> users = [
    Admin("Ali"),
    NormalUser("Sara"),
    Guest("Omar"),
  ];

  for (var user in users) {
    user.getPermissions(); // نفس الدالة لكن سلوك مختلف
  }

  // 🔹 Callable Object
  var validator = Validator();

  print(validator("Hello")); // true
  print(validator("Hi"));    // false
}
