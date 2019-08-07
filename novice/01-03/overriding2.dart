// Tipe parameter fungsi harus sama ketika ingin melakukan overriding suatu method.

void main() {
  Child c = new Child();
  c.m1(12);
}

class Parent {
  void m1(int a) {
    print("value of a ${a}");
  }
}

class Child extends Parent {
  @override
  void m1(String b) {
    // Paremeter pertipe beda dengan kelas induk nya
    print("value of b ${b}");
  }
}
