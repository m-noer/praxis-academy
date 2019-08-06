// Maximum Minimum Value
main() {
  var T = [6, 2, 3, 66, 3, 1];

  // for (var i = 0; i < T.length; i++) {
  //   if (min > T[i]) {
  //     min = T[i];
  //   }
  // }

  print("Minimum value: ${Min(T).toString()}");
  print("Maximum value: ${Max(T).toString()}");
}

int Min(T) {
  int min = T[0];

  for (var i = 0; i < T.length; i++) {
    if (T[i] < min) {
      min = T[i];
    }
  }
  return min;
}

int Max(T) {
  int max = T[0];
  for (var i = 0; i < T.length; i++) {
    if (T[i] > max) {
      max = T[i];
    }
  }
  return max;
}
