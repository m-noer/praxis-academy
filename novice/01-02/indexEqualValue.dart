// Index equal to the value
main() {
  var T = [1, 2, 2, 4, 5];
  print(Equal(T, 0, T.length - 1));
}

int Equal(T, st, end) {
  if (st > end) {
    return -1;
  }
  var midd = (st + end) / 2;
  int mid = midd.toInt();
  if (T[mid] > mid) {
    return Equal(T, st, mid - 1);
  } else if (T[mid] < mid) {
    return Equal(T, mid + 1, end);
  } else {
    return mid;
  }
}
