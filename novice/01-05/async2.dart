void hello() async {
  print('something exciting is going to happen');
}

void main() async {
  await hello();
  print('all done');
}
