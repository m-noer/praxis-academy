// Maximum Minimum Value
main() {
  var T = [6, 2, 3, 66, 3, 1];

  // for (var i = 0; i < T.length; i++) {
  //   if (min > T[i]) {
  //     min = T[i];
  //   }
  // }

  print("Minimum value: ${MaxMin(T)[0]}");
  print("Maximum value: ${MaxMin(T)[1]}");
}

MaxMin(T) {
  int min = T[0];
  int max = T[0];

  for (var i = 1; i < T.length; i++) {
    if (T[i] < min) {
      min = T[i];
    }
    if (T[i] > max) {
      max = T[i];
    }
  }
  return [min, max];
}
