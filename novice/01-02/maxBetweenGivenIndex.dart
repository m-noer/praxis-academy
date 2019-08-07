main() {
  var T = [10, 2, 2, 20, 4, 9, 30];
  print(MaxValue(T, 0, T.length));
}

MaxValue(A, p, r) {
  int max = p;
  for (int i = p + 1; i < r; i++) {
    if (A[i] > A[max]) {
      max = i;
    }
  }
  return max;
}
