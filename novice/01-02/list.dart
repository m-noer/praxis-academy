main() {
  // Fixed Length List
  var lst = new List(3);
  lst[0] = 12;
  lst[1] = 13;
  lst[2] = 11;
  print("Fixed Length List: $lst");

  // Growable List
  var num_list = [1, 2, 3];
  print("Growable List: $num_list");

  // empty List() constructor
  var lst2 = new List();
  lst2.add(12);
  lst2.add(13);
  print("Empty List() constructor: $lst2");

  // List Properties
  // ListFirst Method
  print(lst);
  print("The first element: ${lst.first}");

  // ListLast
  print(lst);
  print("The last element: ${lst.last}");

  // ListLength Method
  print(lst);
  print("Length of lst: ${lst.length}");

  // ListReversed Method
  print(lst);
  print("Reverse List: ${lst.reversed}");

  // List (Basic Operation)
  // Inserting Elements into a List
  // Single value
  List l = [1, 2, 3];
  l.add(12);
  print(l);
  //Multiple value
  l.addAll([12, 13]);
  print(l);

  // List.insert()
  l.insert(0, 30);
  print(l);
  // List.insertAll()
  l.insertAll(2, [21, 23]);
}
