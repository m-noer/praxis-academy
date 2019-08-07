class StaticMem {
  static int num;
  static disp() {
    print("The value of num is ${StaticMem.num}");
  }
}

main() {
  StaticMem.num = 12;
  // initialize the static variable
  StaticMem.disp();
  // invoke the static method
}
