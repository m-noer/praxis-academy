// Backward Insertion Sort

main() {
  var T = [6, 2, 3, 66, 3];
  var i;
  for (i = T.length - 1; i >= 0; i--) {
    var key = T[i];
    var j = i + 1;
    while (j < T.length && key > T[j]) {
      T[j - 1] = T[j];
      j = j + 1;
    }
    T[j - 1] = key;
  }
  print(T);
}
