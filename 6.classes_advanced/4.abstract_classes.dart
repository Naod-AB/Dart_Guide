import 'dart:math';

abstract class Shape {
  double get area;
}

class Sqaure extends Shape {
  Sqaure(this.side);
  final double side;

  @override
  double get area => side * side;
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;
}

void printArea(Shape shape) {
  print(shape.area);
}

void main() {
  // final square = Sqaure(10);
  // final circle = Circle(5);
  // square.area;
  //another way of initializing
  final Shape square = Sqaure(10);
  final Shape circle = Circle(5);
  final shapes = [Sqaure(2), Circle(3)];
  printArea(square);
  printArea(circle);
  shapes.forEach(printArea);
  ;
}
