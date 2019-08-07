main() {
  Car c1 = new Car('E1001');
}

class Car {
  String engine;
  Car(String engine) {
    this.engine = engine;
    print("The engine is: ${engine}");
  }
}
