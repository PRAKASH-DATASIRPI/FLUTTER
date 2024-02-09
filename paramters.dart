void printInfo({required String name, required String gender}) { //required - you must pass the person’s name and gender, otherwise it won’t work.
  print("Hello $name your gender is $gender.");
}

void info(String name, String gender, [String title = "Mr./Mrs."]) { //optional -to make the parameter optional in function calls [].
  print("Hello $title $name your gender is $gender.");
}
void main() {
  // you can pass values in any order in named parameters.
  printInfo(gender: "Male", name: "prakash");
  printInfo(gender: "Female", name: "Suriya");

  info("prakash", "Male");
  info("prakash", "Male", "Mr.");
  info("suriya", "Female", "Mrs.");
}