class Shape {
  void call_area() {
    print("calling calc area defined in the Shape class");
  }
}

class Circle extends Shape {}

main() {
  var obj = new Circle();
  obj.call_area();
}
