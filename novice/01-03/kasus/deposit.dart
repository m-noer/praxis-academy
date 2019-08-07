import 'dart:io';

class Deposit {
  static double depo = 0;
  static void set_deposit(double d) {
    depo = d;
  }

  static double get_deposit() {
    return depo;
  }
}
