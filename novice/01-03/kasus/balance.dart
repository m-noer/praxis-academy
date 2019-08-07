import 'main.dart';

class BalanceInquiry extends ATMMachine {
  static double blc = 0;
  static void set_balance(double b) {
    blc = b;
  }

  static double get_balance() {
    return blc;
  }
}
