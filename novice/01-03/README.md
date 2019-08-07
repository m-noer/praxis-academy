# Hari 3 | OOP pada Dart

###### Muhammad Noehidayatullah - Rabu, 7 Agustus 2019

## Ringkasan Materi

OOP (Object Oriented Programming) adalah suatu metode pemrograman yang berorientasi kepada objek. Tujuan dari OOP diciptakan adalah untuk mempermudah pengembangan program dengan cara mengikuti model yang telah ada di kehidupan sehari-hari.

### Class

```dart
class Car {
  String engine = "E1001";

  void disp() {
    print(engine);
  }
}

main() {
  Car c = new Car();
  c.disp();
}
```
