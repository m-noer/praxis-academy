main() {
  // var voyager = Spacecraft('Voyager I', DateTime(1997, 9, 5));
  // voyager.describe();

  // var voyager3 = Spacecraft.unlaunched('Voyager III');
  // voyager3.describe();

  var tes = Orbiter('Voyager II', DateTime(1997, 9, 5), 20.23232);
  tes.describe();
}

class Spacecraft {
  String name;
  DateTime launchDate;

  // Constructor
  Spacecraft(this.name, this.launchDate) {

  }

  //
  Spacecraft.unlaunched(String name) : this(name, null);


  int get launchYear => launchDate?.year;

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

class Orbiter extends Spacecraft {
  num altitude;
  Orbiter(String name, DateTime launchDate, this.altitude)
    : super(name, launchDate);
}