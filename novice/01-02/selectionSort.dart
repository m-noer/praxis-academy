main() {
  var T = [6, 2, 3, 66, 3];
  print(SelectionSort(T));
}

SelectionSort(A) {
  for (int i = 0; i < A.length - 1; i++) {
    int indexMin = i;
    for (int j = i + 1; j < A.length; j++) {
      if (A[j] < A[indexMin]) {
        indexMin = j;
      }
    }
    if (indexMin != i) {
      int temp = A[i];
      A[i] = A[indexMin];
      A[indexMin] = temp;
    }
  }
  return A;
}
