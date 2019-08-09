import 'dart:async';
import 'dart:io';

void main() {
  File file = new File(Directory.current.path + "/contact.txt");
  Future<String> f = file.readAsString();

  // returns a future, this is Async method
  f.then((data) => print(data));

  // once file is read, call back method is invoked
  print("End of main");
  //this get printed first, showing fileReading is non blocking or async
}
