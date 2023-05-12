import 'dart:math';

abstract class Shape {
  double get area;
  double get perimeter;

  void printValue() {
    print(
        'area: ${area.toStringAsFixed(1)}, perimeter: ${perimeter.toStringAsFixed(1)}');
  }
}

class Sqaure extends Shape {
  Sqaure(this.side);
  final double side;

  @override
  double get area => side * side;

  @override
  double get perimeter => side * 4;
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;

  @override
  double get perimeter => pi * radius * 2;
}

// void printArea(Shape shape) {
//   print(shape.area);
// }

void main() {
  final shapes = [Sqaure(3), Circle(4)];
  shapes.forEach((shape) => shape.printValue());
}
