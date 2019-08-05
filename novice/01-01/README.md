# Hari ke-1 
# Hello World
fungsi **main()** harus ada disetiap aplikasi yang dibuat.

```dart
void main() {
  print('Hello, World');
}
```
Hasil:

![Hasil](/img/hello.png)

**print()** digunakan untuk menampilkan teks pada console

# Variables
Pada dart dapat menggunkan **var** untuk semua tipe data dan secara otomatis tipe data akan menyesuaikan dengan **value** dari variable tersebut
```dart
var name = 'Voyager I';
var year = 1997;
var antennaDiameter = 3.7;
var flybyObject = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
var image = {
  'tags': ['saturn'],
  'url': '//path/to /saturn.jpg'
};
```
Pada code diatas varibale **name** akan bertipe **String**, **year** bertipe **int** , **antennaDiameter** bertipe **double**, **flyObjects** bertipe **Array** dan **image** berupa **map**

# Control flow statements
Variable diambil dari variable pada code diatas
## Conditional Statements IF ELSE
Digunakan untuk kasus dengan syarat terntu atau terdapat beberapa kondisi yang memenuhi
```dart
if (year >= 2001) {
   print('21st century');
} else if (year >= 1901) {
  print('20th century');
}
```
Hasil:

![Hasil](/img/if.png)

## for in Loop
**for in** loop dapat digunakan pada variabel yang berupa list atau array.
Jadi setiap object yang terdapat pada list tersebut akan dipanggil
```dart
for (var object in flybyObject) {
  print(object);
}
```
Hasil:

![Hasil](/img/for-in.png)

## for loop
**for** loop melakukan pengulangan dengan memberi inisialisasi, batas pengulangan serta operasi pengulangannya
```dart
for(int month = 1; month <=12; month++){
  print(month);
}
```
Hasil:

![Hasil](/img/for.png)

## while Loop
**while** loop melakukan pengulangan saat kondisi terpenuhi atau **true**
```dart
while (year < 2016) {
  year +=1;
  print(year);
}
```
Hasil:

![Hasil](/img/while.png)

# Functions

```dart
int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n-1) + fibonacci(n-2);
}

var result = fibonacci(20);
print(result);
```

# Comments
Pada Dart komentar biasanya menggunakan **//** digunakan untuk memberi tanda atau penjelasan pada suatu code
```dart
// komentar untuk satu baris

/* Komentar yang digunakan u
ntuk beberapa baris */

/// komentar dokumentasi digunakan pada dokomen libraries, classes dan members
```
# Imports
**import** digunakan untuk mengakses libraries
```dart
// Importing core libraries
import 'dart:math';

// Importing libraries from external packages
import 'package:test/test.dart';

// Importing files
import 'path/to/my_other_file.dart';
```
# Classes
```dart
class Spacecraft {
  String name;
  DateTime launchDate;

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {

  }

  // Named constructor that forwards to the default one.
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
```
untuk menggunakan class Spacecraft di dalam **main()** function yaitu dengan cara:
```dart
var voyager = Spacecraft('Voyager I', DateTime(1997, 9, 5));
voyager.describe();

var voyager3 = Spacecraft.unlaunched('Voyager III');
voyager3.describe;
```
Hasil:

![Hasil](/img/class.png)

# Inheritance
Inheritance atau Pewarisan dapat mewarisi method, properties dari parent class atau kelas induknya
```dart
var tes = Orbiter('Voyager II', DateTime(1997, 9, 5), 20.23232);
tes.describe();
```
Hasil:

![Hasil](/img/inher.png)

# Mixins
**Mixins** merupakan class dimana method dari class ini dapat digunakan pada kelas lain tanpa ***extends*** atau mewarisi class tersebut

```dart
class Piloted {
  int astronauts = 1;
  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}
```
Untuk menambahkan **mixin** pada suatu kelas yaitu dengan:
```dart
class PilotedCraft extends Spacecraft with Piloted {
  // ...
}
```
Dengan begitu **PilotedCraft** telah mempunya **astronauts** field serta method **describeCrew**

# Interfaces and abstract classes
```dart
class MockSpaceship implements Spacecraft {
  // ...
}
```

# Async
```dart
const oneSecond = Duration(seconds: 1);
// ···
Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond);
  print(message);
}
```
# Exception
