// Insertion Sort
main() {
  var T = [6, 2, 3, 66, 3];
  for (var i = 0; i < T.length; i++) {
    for (var j = i + 1; j < T.length; j++) {
      if (T[i] > T[j]) {
        var tmp = T[i];
        T[i] = T[j];
        T[j] = tmp;
      }
    }
  }

  for (var i = 0; i < T.length; i++) {
    print(T[i]);
  }
}
