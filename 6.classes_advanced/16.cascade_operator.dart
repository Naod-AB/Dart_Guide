import 'dart:math';

class closedPath {
  List<Point> _points = [];

  void moveTo(Point point) => _points = [point];
  void lineTo(Point point) => _points.add(point);
}

void main() {
  final path = closedPath();
  path.moveTo(Point(0, 0));
  path.lineTo(Point(2, 0));
  path.lineTo(Point(2, 2));
  path.lineTo(Point(0, 2));
  path.lineTo(Point(0, 0));

  //1. instead of calling the methods by repeating path. we can use cascade
  final paths = closedPath()
    ..moveTo(Point(0, 0))
    ..lineTo(Point(2, 0))
    ..lineTo(Point(2, 2))
    ..lineTo(Point(0, 2)) // 2. we can use ?..lineTo(Point(0, 2)) for null types
    ..lineTo(Point(0, 0));

  print(paths._points);
}
