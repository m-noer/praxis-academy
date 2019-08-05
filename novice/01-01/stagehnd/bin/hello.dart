void main() {
  print('Hello, World');

  // Variables
  var name = 'Voyager I';
  var year = 1997;
  var antennaDiameter = 3.7;
  var flybyObject = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to /saturn.jpg'
  };

  // Control flow statement
  // IfElse
  if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('20th century');
  }
  // for in loop
  for (var object in flybyObject) {
    print(object);
  }

  // for loop
  for(int month = 1; month <=12; month++){
    print(month);
  }

  // while loop
  while (year < 2016) {
    year +=1;
  }

  // Functions
  int fibonacci(int n) {
    if (n == 0 || n == 1) return n;
    return fibonacci(n-1) + fibonacci(n-2);
  }

  var result = fibonacci(20);
  print(result);

  // Arrow Function

  // var voyager = Spacecraft('Voyager I', DateTime(1997, 9, 5));
  // voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();
  
}

//Classes
class Spacecraft {
  String name;
  DateTime launchDate;

  // Constructor
  Spacecraft(this.name, this.launchDate) {

  }

  //
  Spacecraft.unlaunched(String name) : this(name, null);


int get launchYear =>
  launchDate?.year;

// Method
void describe() {
  print('Spacecraft: $name');
  if (launchDate != null) {
    int years = DateTime.now().difference(launchDate).inDays ~/ 365;
    print('Launched: $launchYear ($years years ago)');
  } else {
    print('Unlaunched');
  }
}

}