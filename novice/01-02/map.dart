main() {
  // Adding values to Map Literals
  var details = {'username': 'tom', 'password': 'pass'};
  print(details);

  // Map Constructor
  var data = new Map();
  data['username'] = 'admin';
  data['pwd'] = 'admin';
  print(data);

  // Map - Properties
  // Length Properties
  print(data.length);

  // Values Properties
  print(details.values);

  // Key Properties
  print(data.keys);

  //
  print(data['username']);

  // Map.forEach() Function
  details.forEach((k, v) => print('${k}'));

  // Map.clear() Function
  print(data);
  data.clear();
  print(data);

  // Map.remove() Function
  print(details);
  dynamic res = details.remove('username');
  print('Value popped from the Map: ${res}');
}
