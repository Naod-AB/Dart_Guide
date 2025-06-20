void main() {
  final list = [1, 2, 3];
  final copy1 = list;
  copy1[0] = 0;
  // print(list);
  // print(copy1);

  // this means copy 1 is just taking a reference, meaning the value won't be copied they both take the data from 1 locaition
//to copy a collection:
  final copy2 = [...list];
  copy2[0] = 1;
  print(list);
  print(copy1);
  print(copy2);
}
