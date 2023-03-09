import 'dart:io';

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
