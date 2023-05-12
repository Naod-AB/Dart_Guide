// a way of adding functionality to a existing types

extension numberParsig on String {
  int? toIntOrNull() => int.tryParse(this);
}

void main() {
  // int.tryParse('123'); instead of this we can use an extension
  var x = '456'.toIntOrNull();

  print(x);
}
