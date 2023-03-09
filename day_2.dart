import 'dart:io';

// parameterised function
void FullName(String fName, String lName) {
  print(fName + " " + lName);
}

// Named parameter
void printFullName({required String fName, required String lName}) {
  // required key indicates that the parameter must be passed when the function is called.
  print(fName);
  print(lName);
}

// Optional parameter
void CompleteName(String fName, String lName, [String? fatherName]) {
  print("first name = $fName");
  print("last name = $lName");
  print("father name = $fatherName");
}

void main(List<String> args) {
  // Loops
  int no = 1;
  while (no < 5) {
    print("i am learning flutter");
    no++;
  }

  for (var i = 1; i < 5; i++) {
    print("i am using for loop.");
  }

  var my_input = stdin.readLineSync();
  no = int.parse(my_input!);
  no = 1;
  do {
    print("now i am using do-while loop.");
    no++;
  } while (no < 5);

  // break: it ends the loop immediately when it is encountered.
  // continue: it skips the  current iteration of a loop when it encountered.
  for (var i = 1; i < 10; i++) {
    if (i == 4) continue;
    if (i == 6) break;
    print(i);
  }
}

/*
String? name;
here value of name can be either string or null

data type of input is always string?
var my_input = stdin.readLineSync();
no = int.parse(my_input!);
here since .parse method take string only,so we are converting String? to String
*/