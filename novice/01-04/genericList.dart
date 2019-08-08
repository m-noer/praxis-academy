void main() {
  List<String> logTypes = new List<String>();

  logTypes.add("WARNING");
  logTypes.add("ERROR");
  logTypes.add("INFO");

  for (String type in logTypes) {
    print(type);
  }
}
