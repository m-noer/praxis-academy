class GenericClass<T> {
  T ob;

  // Contructor
  GenericClass(T o) {
    ob = o;
  }

  // Method ambil nilai ob
  T getob() {
    return ob;
  }

  // Method untuk menampilkan tipe data
  void showType() {
    print("Type of T is ${ob.runtimeType}");
  }
}

void main() {
  GenericClass<int> iOb = new GenericClass(88);
  iOb.showType();

  int v = iOb.getob();
  print("value: ${v}");

  GenericClass<String> strOb = new GenericClass("Generics Test");
  strOb.showType();

  String str = strOb.getob();
  print("value: ${str}");
}
