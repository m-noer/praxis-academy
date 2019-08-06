// Operators
main() {
  // Arithmetic Operators
  print("1+1= ${1 + 1}");
  print("3-2= ${3 - 2}");
  print("negasi 1 = ${-1}");
  print("3*2= ${3 * 2}");
  print("5/2= ${5 / 2}");
  print("5/2= ${5 % 2}");
  int a = 1;
  print("++a= ${++a}");
  print("--a= ${--a}");

  // Conditional Expression
  // condition ? expr1: expr2
  var b = 10;
  var res =
      b > 2 ? "Value greater than 10" : "value lesser than or equal to 10";
  print(res);
  // Another sample
  var c = null;
  var d = 12;
  var res2 = c ?? d;
  print(res2);
}
