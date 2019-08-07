import 'dart:io';
import 'balance.dart';
import 'wihtdraw.dart';
import 'deposit.dart';

class ATMMachine {
  static void checkBalance() {
    print("Your current balance is ${BalanceInquiry.get_balance()}");
  }

  static void wihtdrawMoney() {
    if (BalanceInquiry.blc == 0) {
      print("Your current balance is zero.");
      print("You cannot wihtdraw!");

      print("You need to deposit money first.");
    } else if (BalanceInquiry.blc <= 500) {
      print("You do not have sufficient money int the bank");
      print("Check your balance to see your money in the bank");
    } else if (Wihtdraw.wd > BalanceInquiry.blc) {
      print("The amount you wihtdraw is greater than your balance");
      print("Please check the amount you entered");
    } else {
      BalanceInquiry.blc = BalanceInquiry.blc - Wihtdraw.wd;
      print("You wihtdraw the amount of Rp ${Wihtdraw.wd}");
    }
  } // wihtdrawMoney

  static void depositMoney() {
    print("You deposited the amount of ${Deposit.depo}");
  }
}

main() {
  int select = 0;
  int choice = 0;
  print("======================================");
  print("welcome to this simple ATM machine");
  print("======================================\n\n\n");

  do {
    do {
      print("Please select ATM Transactions");
      print("Press [1] Deposit");
      print("Press [2] Wihtdraw");
      print("Press [3] Balance Inquiry");
      print("Press [4] Exit\n\n");

      stdout.write("What would you like to do?: ");
      select = int.parse(stdin.readLineSync());

      if (select > 4) {
        print("Please select correct transaction");
      } else if (select == 1) {
        stdout.write("Enter the amount of money to deposit: ");
        Deposit.set_deposit(double.parse(stdin.readLineSync()));

        BalanceInquiry.blc = Deposit.get_deposit() + BalanceInquiry.blc;
        ATMMachine.depositMoney();
      } else if (select == 2) {
        print(
            "To wihtdraw make sure that you have sufficient balance in your account");
        stdout.write("Enter amount of money to wihtdraw: ");
        Wihtdraw.wd = double.parse(stdin.readLineSync());
        ATMMachine.wihtdrawMoney();
      } else if (select == 3) {
        ATMMachine.checkBalance();
      } else if (select == 4) {
        print("Transaction exited");
        return -1;
      }
    } while (select > 4);

    do {
      print("Would you like to try another tansaction?");
      print("Press [1] Yes \t Press [2] No");
      stdout.write("Enter choice: ");
      choice = int.parse(stdin.readLineSync());

      if (choice > 2) {
        print("Please select correct choice");
      }
    } while (choice > 2);
  } while (choice == 1);
  print("Thanks");
}
