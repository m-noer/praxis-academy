main () {
  // Variables
  var name = 'Voyager I';
  var year = 1997;
  var antennaDiameter = 3.7;
  var flybyObject = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to /saturn.jpg'
  };
  // if (year >= 2001) {
  //   print('21st century');
  // } else if (year >= 1901) {
  //   print('20th century');
  // }
  
  // for in loop
  // for (var object in flybyObject) {
  //   print(object);
  // }

  // for loop
  // for(int month = 1; month <=12; month++){
  //   print(month);
  // }

  // print('while loop');
  // while loop
  while (year < 2016) {
    year +=1;
    print(year);
  }
}