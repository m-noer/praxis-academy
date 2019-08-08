void main() {
  Set<int> numberSet = new Set<int>();
  numberSet.add(100);
  numberSet.add(20);
  numberSet.add(5);
  numberSet.add(70);

  // numberSet.add("Tom");

  print("Default implementation : ${numberSet.runtimeType}");

  for (var no in numberSet) {
    print(no);
  }
}
