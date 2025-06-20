void main() {
  //1. sets: are lists with no repetition and they're represented by curly braces
  var countires = {'Italy', 'UK', 'Russia'};
  countires.elementAt(0); // calling by index in a set
  countires.add('Germany');
  countires.remove(
    'Germany',
  ); // if the item doesn't exist it doesn't do anything
  countires.first;
  countires.last;
  countires.contains('UK');
  countires.length;

  //set operations {Union, intersection, difference}
  var euCountires = {'Italy', 'UK', 'Russia'};
  var asianCountires = {'India', 'China', 'Russia'};
  print(euCountires.union(asianCountires));
  print(euCountires.intersection(asianCountires));
  // this returns items that are on the first set but not on the second
  print(euCountires.difference(asianCountires));

  //iterate
  for (var country in euCountires) {
    print(country);
  }

  // Exercise
  const a = {1, 3};
  const b = {3, 5};
  // Print {1,5}

  final c = a.union(b).difference(a.intersection(b));
  //{1,3,5}  difference   {3}
  //{1,5}
  print(c);
}
