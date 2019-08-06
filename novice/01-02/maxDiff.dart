// Maximum Difference Value
main() {
  var T = [6, 2, 3, 66, 3, 1];

  print("Maximum Difference Value: ${MaxDiff(T).toString()}");
}

int MaxDiff(T) {
  int min = T[0];
  int max = T[0];

  for (var i = 0; i < T.length; i++) {
    if (T[i] < min) {
      min = T[i];
    }
  }

  for (var i = 0; i < T.length; i++) {
    if (T[i] > max) {
      max = T[i];
    }
  }

  return max - min;
}
