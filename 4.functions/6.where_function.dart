void main() {
  const list = [1, 2, 3, 4];
  final odd = where<int>(list, (value) => value % 2 == 1);
  final even = where<int>(list, (value) => value % 2 == 0);

  print('Even $even \nOdd is $odd');

  const lists = [1, 2, 3, 4, 5];
  final result = firstWhere(lists, (x) => x == 5, orElse: () => -1);
  print(result);
  // this creates a function that takes a list and a function evaluation and if the function fails it returns a default value
}

List<T> where<T>(List<T> items, bool Function(T) f) {
  var result = <T>[];
  items.forEach((i) {
    if (f(i)) {
      result.add(i);
    }
  });

  ;
  return result;
}

//Exercise
T firstWhere<T>(List<T> items, bool Function(T) f,
    {required T Function() orElse}) {
  for (var item in items) {
    if (f(item)) {
      return item;
    }
  }
  return orElse();
}
