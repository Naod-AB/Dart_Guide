void main() {
  //1. Lists: are represented with square brackets
  // var countiry = <String>['Italy', 'UK', 'Russia'];// another way of deaclearing
  List<String> countires = ['Italy', 'UK', 'Russia'];
  countires[0];
  countires[1] = 'Rome';

  for (var country in countires) {
    print(country);
  }

  List<int> numbers = [1, 3, 5, 7, 9];
  var sum = 0;
  for (var number in numbers) {
    sum += number;
  }
  print(sum);

  // List methods or operations
  countires.length;
  countires.isEmpty;
  countires.isNotEmpty;
  countires.first;
  countires.last;
  countires.add('Germany');
  countires.removeAt(2);
  countires.insert(2, 'France');
  countires.contains('UK');
  countires.indexOf('UK'); // if item is not found it returns -1

// Var, final , const
  final euCountires = <String>['Italy', 'UK', 'Russia'];
  // euCountires = ['France']; // this will not work with const nor final

  euCountires[1] =
      'France'; // this can be used to modify data even on declearing final
  //in const this above will not work but the error is catched on runtime
}
