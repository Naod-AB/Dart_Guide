//! Statement vs Expression
// void main() {
//   int sum = 2 + 3; // 2 + 3 is an expression → returns 5
//   print(
//     sum,
//   ); // this is a statement → it performs an action but don't return a value
// }

///! Replace String
// void main() {
//   String language = ' This is Flutter';
//   String frame = language.replaceAll('Flutter', 'Dart');
//   print(frame);
// }

///! String conversion
// void main() {
//   String x = '20.55';
//   String y = '20';
//   double dAge = double.parse(x);
//   int age = int.parse(y);
//   String frame = dAge.toStringAsFixed(1); // 20.56
//   String frame2 = age.toStringAsFixed(1); // 20.0
//   print("$frame $age $frame2");
// }

///!Operations
// void main() {
//   int x = 5;
//   double y = 7;
//   x += 1; //x++;
//   x -= 1; //x--;
//   x *= 2;
//   print(y /= 2); // 2.5
//   print(x ~/ 2); // 2
//   print(x % 2); // 1
//   print('$x $y');

//   int a = 10;
//   int b = a++; // a:11. b:10
//   // int b = ++a; // a:11. b:11
//   print('$a $b ');
// }

///! Hex format, bitwise & shifting operation,
void main() {
  int green = 0xFF00FF00;
  print(green); // 4278255360

  int x = 0xF0; // binary: 11110000
  int y = 0x0F; // binary: 00001111

  // Bitwise OR, Combines bits: 11110000 | 00001111 = 11111111 (decimal 255)
  print(x | y);

  // Bitwise AND, Keeps common bits: 11110000 & 00001111 = 00000000 (decimal 0)
  print(x & y);

  //* toRadixString() = convert number to hex (16) or binary (2) string.
  print((x | y).toRadixString(16)); // ff
  print((x & y).toRadixString(16)); // 0

  //Shifting operations
  int a = 4; // binary 100
  /* 100  (binary for 4)
    a >> 1
    ↓ shift right 1
    010  (binary for 2)
  */
  print((a >> 1).toRadixString(2)); //10
}
