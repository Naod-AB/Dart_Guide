void main() {
  const list = [1, 2, 3, 4];

  // creating a sum of all items
  final sum = list.reduce((value, element) => value + element);
  print(sum);
  //how it works
  //value  : 1 3 6 10
  //element: 2 3 4
}
