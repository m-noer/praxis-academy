// Dart Constructors
main() {
  Car c = new Car('E1001');
  Car2 c1 = new Car2();
  Car2 c2 = new Car2.nameConst('E1002');
}

class Car {
  Car(String engine) {
    print(engine);
  }
}

// Named Contructors
class Car2 {
  Car2() {
    print("Non-parameterized constructor invoked");
  }

  Car2.nameConst(String engine) {
    print("The engine is : ${engine}");
  }
}
