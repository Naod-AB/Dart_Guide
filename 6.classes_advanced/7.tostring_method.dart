class Point {
  Point(this.x, this.y);
  final int x;
  final int y;

  @override
  String toString() =>
      'Point($x,$y)'; // if this is not added we can't see the values of the print in main function
}

void main() {
  print(Point(1, 1));

  final list = [Point(1, 2), Point(1, 2)];
  print(list);
}
