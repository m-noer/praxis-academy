void main() {
  List<String> logTypes = new List<String>();
  logTypes.add(1);
  logTypes.add("ERROR");
  logTypes.add("INFO");

  //iterating across list
  for (String type in logTypes) {
    print(type);
  }
}
