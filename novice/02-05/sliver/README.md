# Hari 10 | UI Lanjut - Slivers dan Gestures

###### Muhammad Noerhidayatullah - Jum'at, 16 Agustus 2019

### Kasus

Membuat class `Header`

```dart

class Header extends StatelessWidget {
  Header(
    this.headerText, {
    Key key,
  }) : super(key: key);

  GlobalKey globalKey = new GlobalKey();

  final String headerText;

  void collaps() {
    Scrollable.ensureVisible(globalKey.currentContext);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: globalKey,
      onTap: collaps,
      child: Container(
        color: Colors.lightBlue,
        child: Center(
          child: Text(headerText),
        ),
      ),
    );
  }
}
```

dan memberikan `GestureDetector()` dengan paramater `onTap` yang berisi fungsi untuk melakukan _scroll_ ke tiap header yang telah dibuat.

```dart
GestureDetector(
  key: globalKey,
  onTap: collaps,
  child: Container(
    color: Colors.lightBlue,
    child: Center(
      child: Text(headerText),
    ),
  ),
)
```

`Scrollable.ensureVisible(globalKey.currentContext)` untuk melakukan scroll ke **key** tertentu dan sebelum itu mendefinisikan variabel `globalKey`

```dart
  GlobalKey globalKey = new GlobalKey();

```

```dart
void collaps() {
  Scrollable.ensureVisible(globalKey.currentContext);
}
```
