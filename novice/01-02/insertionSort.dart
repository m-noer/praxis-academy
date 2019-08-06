// Insertion Sort
main() {
  var T = [6, 2, 3, 66, 3];

  for (var i = 0; i < T.length; i++) {
    var key = T[i];
    var j = i;
    while (j > 0 && T[j - 1] > key) {
      T[j] = T[j - 1];
      j = j - 1;
    }
    T[j] = key;
  }
  print(T);
}
