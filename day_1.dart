import 'dart:io'; // importing so that we can use "stdin"

void main(List<String> args) {
  print('Hello world!');
  // it is used to print the output on the output screen.

  // Variables

  // declaring a variable
  int a = 10;
  var b = 20; // this is called type inference.
  print(a);
  print(b);
  double pi = 3.14;
  String name = "mohd raza";
  bool isIn = true;
  print("value of pi = $pi");
  print("my name is $name");
  print(isIn);

  // Arithmetic Operator
  /*
  +     |   addition        | add two numbers
  -     |   subtraction     | subtracts two numbers
  *     |   multiplication  | multiplly two numbers
  /     |   division        | divides two numbers and gives quotient
  %     |   modulus         | divides two numbers and gives remainder
  ++x   |   pre-increment   | increments x by  1 and returns it
  x++   |   post-increment  | returns the original and then increments by 1
  --x   |   pre-decrement   | decrements x by  1 and returns it
  x--   |   post-decrement  | returns the original and then decrements by 1
  >     |   greater than    | check whethere LHS is greater or not
  <     |   less than       | check whethere LHS is smaller or not
  >=    |   great/= to      | check whethere LHS is "greater or equal to" or not
  <=    |   lesser/= to     | check whethere LHS is "lesser or equal to" or not
  !=    |   not equal to    | check whethere both the sides are equal or not
  &&    |   AND             | true only if both operands are true
  ||    |   OR              | true if either ooperand is true
  !     |   NOT             | changes true to false and false to true
  */

  // Type casting
  print("\nType casting");
  var div1 = 4 / 6;
  print(div1);
  print(div1.toInt());

  // to print integer part only we can use ~ symbol with division as well
  print(10 ~/ 2);

  var s = "1";
  int.parse(s);
  print(s);

  // Conditional statements
  print("\n Conditional statement");
  int age = 20;
  if (age > 18) {
    print("you ae eligible");
  } else {
    print("you are not eligible");
  }

  // Taking input from user.
  var day = stdin.readLineSync();

  // Switch case
  print("\n Switch case");

  switch (day) {
    case "Monday":
      print("it is monday");
      break;
    case "Tuesday":
      print("it is tuesday");
      break;
    case "Wednesday":
      print("it is wednesday");
      break;
    default:
      print("enter correct day name");
  }

  // Ternary operator
  /*
  Syntax: condition?expression1:expression2

  if condition is true, expression1 will execute
  if condition is false, expression2 will execute
  */
  var no1 = 20;
  var no2 = 30;
  var mymax = no1 > no2 ? no1 : no2;
  print("my max value is $mymax");
}
