# Hari 4 | Struktur Data, Collections, dan Generics

###### Muhammad Noerhidayatullah - Kamis, 8 Agustus 2019

## Ringkasan Materi

### `List`

`List` adalah kumpulan data yang memiliki tipe data yang sama atau istilahnya disebut `array`.
Indeks pada list dimulai dari **0**.

#### Fixed Length List

##### 1. Deklarasi List

Sintaks untuk mendeklarasikan _fixed length list_ seperti berikut ini
`var list_name = new List(initial_size);`
atau
`List<type_of_data> list_name = new List(initial_size;`

##### 2. Initialisasi List

Sintaks untuk menginisialisasi `list` seperti berikut ini :
`lst_name[index] = value;`

Contoh :

```dart
void main() {
  var lst = new List(3); // List lst = new List(3)
  lst[0] = 12;
  lst[1] = 13;
  lst[2] = 11;
  print(lst);
}

```

Output:

`[12, 13, 11]`

#### Growable List

##### 1. Deklarasi List

```
var list_name = [val1,val2,val3]
--- creates a list containing the specified values
OR
var list_name = new List()
--- creates a list of size zero
```

##### 2. Inisialisasi List

`list_name[index] = value;`

Contoh :

```dart
void main() {
  var makanan = ["Ikan Bakar", "Bakso", "Ayam Goreng"];
  print(makanan);
}

```

Output:

```
[Ikan Bakar, Bakso, Ayam Goreng];
```

#### List Properties

#### `first`

`first` akan mengembalikan elemen pertama atau indeks ke - 0

##### Sintaks

`list_name.first`

Contoh :

```dart
void main() {
  var makanan = ["Ikan Bakar", "Bakso", "Ayam Goreng"];

  print("Elemen Pertama : ${makanan.first}");
}

```

Output:
`Elemen Pertama : Ikan Bakar`

### `isEmpty`

Return `true` jika _collection_ tidak memiliki elemen

##### Sintaks

`list_name.isEmpty`

Contoh :

```dart
void main() {
  var list = [1, 2, 3];
  print("Return : ${list.isEmpty}");

  var list2 = [];
  print("Return : ${list2.isEmpty}");
}

```

Output :

```
Return : false
Return : true

```

Saat `collection` tersebut ada `value` nya maka `isEmpty` akan return `false` sedangkan jika `collection` kosong akan return `true`

### `isNotEmpty`

Return `true` jika _collection_ setidaknya memiliki satu elemen.

#### Sintaks

`list_name.isNotEmpty`

Contoh :

```dart
void main() {
  var list = [1, 2, 3];
  print("Return : ${list.isNotEmpty}");

  var list2 = [];
  print("Return : ${list2.isNotEmpty}");
}

```

Output :

```
Return : true
Return : false
```

`isNotEmpty` menghasilkan value yang berlawanan dari `isEmpty` yang hanya return `true` atau `false`

### `length`

return jumlah elemen list tersebut.

#### Sintaks

`list_name.length`

Contoh :

```dart
void main() {
  var makanan = ["Ikan Bakar", "Bakso", "Ayam Goreng"];
  print(makanan.length);
}
```

Output :

`3`

## `Maps`

Map berguna untuk menyimpan data termasuk `key` nya.
Ketika ingin mengambil data dari `map` akan dibutuhkan `key` nya untuk mendapat `value` daru `key` tersebut.

#### Deklarasi `Map` menggunakan Map Literals

`var map_name = {key1:value1, key2:value2};`

#### Deklarasi `Map` menggunakan Map Constructor

```
var map_name = new Map();

map_name[key] = value;
```

Contoh : Map Literal

```dart
void main() {
  var ibukota = {"Indonesia": "Jakarta", "USA": "Washington", "Japan": "Tokyo"};
  print(ibukota);
  print(ibukota['Indonesia']); // Memang map dengan key 'Indonesia'
}

```

Output :

```
{Indonesia: Jakarta, USA: Washington, Japan: Tokyo}
Jakarta
```

#### Map Properties

## `Sets`

`set` beroperasi mirip dengan List. `set` merepresentasikan `collection` dari objek yang mana objek hanya bisa dipakai satu kali saja.

### Sintaks

`Identifier = new Set()`
atau
`Identifier = new Set.from(Iterable);

Contoh :

```dart
void main() {
  var warna = new Set.from(["merah", "kuning", "hijau"]);

  for (String warna in warna) {
    print(warna);
  }
}

```

Output :

```
merah
kuning
hijau
```

## Generics

#### Sintaks

`Collection_name <data_type> identifier = new Collection_name<data_type>`

## `Generic List`

Contoh :

```dart
void main() {
  List<String> logTypes = new List<String>();

  logTypes.add("WARNING");
  logTypes.add("ERROR");
  logTypes.add("INFO");

  for (String type in logTypes) {
    print(type);
  }
}

```

Output:

```
WARNING
ERROR
INFO
```

Apabila ditambahkan _value_ selain tipe data yang telah ditentukan akan menghasilkan `error` seperti contoh berikut ini :

```dart
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
```

Output:

```
Error: The argument type 'int' can't be assigned to the parameter type 'String'.
Try changing the type of the parameter, or casting the argument to 'String'.
  logTypes.add(1);
```

## `Generic Set`

```dart
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

```

Output:

```
Default implementation : _CompactLinkedHashSet<int>
100
20
5
70
```

## `Generic Queue`

```dart
import 'dart:collection';

void main() {
  Queue<int> queue = new Queue<int>();
  print("Default implementation ${queue.runtimeType}");
  queue.addLast(10);
  queue.addLast(20);
  queue.addLast(30);
  queue.addLast(40);

  for (int no in queue) {
    print(no);
  }
}

```

Output :

```
Default implementation ListQueue<int>
10
20
30
40
```
