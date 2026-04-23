
//task 1
void main() {
  late String userfileDesc;
  userfileDesc = "This user is interested in Flutter development.";
  print(userfileDesc);

  // تم استخدام late لأننا سنقوم بتهيئة المتغير لاحقًا
  // وليس عند تعريفه مباشرة

// task 2

  // متغير ثابت وقت الترجمة (compile-time)
  const String appVersion = "1.0.0";

  // متغير يتحدد وقت التشغيل (runtime)
  final DateTime loginTime = DateTime.now();

  print("App Version: $appVersion");
  print("Login Time: $loginTime");

// task3

  // يقبل
  final time1 = getCurrentTime();
  // لأن: الدالة تُنفذ وقت التشغيل (runtime)

  // يرفض
  //لأن: const يحتاج قيمة ثابتة وقت الترجمة
 /* const time2 = getCurrentTime();*/
}
DateTime getCurrentTime() {
  return DateTime.now();
}

