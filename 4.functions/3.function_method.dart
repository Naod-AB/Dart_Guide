void main() {
  //For each method
  const list = [1, 2, 3];
  list.forEach((e) => print(e));
  // these 2 are the same
  list.forEach(print);

  //Map
  /* this creates a new list but keep in mind The return typs of map is Iterable not a list, 
  to change it we can add toList at the end*/
  final doubles = list.map((e) => e * 2).toList();

  print(doubles);
}
