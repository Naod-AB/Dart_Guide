import 'dart:math';

void main() {
  final numbers = [3, 10, 7, 6, 2, 9];
  var square = [];

  //*Create and print a new list containing squares of numbers greater than 5.
  for (var n in numbers) {
    if (n > 5) square.add(pow(n, 2));
  }
  print(square);
}
