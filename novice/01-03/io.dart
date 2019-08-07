import 'dart:io';

main() {
  stdout.write("Inputkan nilai: ");
  int nilai = int.parse(stdin.readLineSync());

  print(nilai);
}
