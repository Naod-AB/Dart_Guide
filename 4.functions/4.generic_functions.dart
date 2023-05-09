void main() {
  //code reuse with   Anonymous function and generics
  // making function resuable with doing different things
  //For each method
  const list = [1, 2, 3];
  const dList = [1.0, 2.0, 3.0];

  final doubles = transform<int>(list, (x) => x * 2);
  // to handle null errors we can call the function with a type
  final square = transform<int>(list, (x) => x * x);
  final triple = transform<double>(dList, (x) => x * 3);

  // note: we with just <T> can't make our our function return other type than it was given
  final rounded = transformToAnotherType<double, int>(dList, (x) => x.round());
  // The <double, int> is not a must but it helps with null value
  print('$doubles, $square, $triple, $rounded');
}

// List<int> transform<T>(List<int> items, int Function(int) f)
List<T> transform<T>(List<T> items, T Function(T) f)
// the T is use to make the function generic, meaning instead of using just list <int>,
// it will be able to use other types as well.
{
  var result = <T>[];
  result = items.map((e) => f(e)).toList();
  //or
  // for (var x in items) {
  //   result.add(x);
  // }
  ;
  return result;
}

List<R> transformToAnotherType<T, R>(List<T> items, R Function(T) f) {
  //R enables it to transform one data type to another, so all the return type should be r
  var result = <R>[];
  result = items.map((e) => f(e)).toList();
  ;
  return result;
}
