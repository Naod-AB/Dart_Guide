import 'dart:math';

abstract class Shape {
  double get area;
  const Shape(); // add this so that the subclasses can work

  factory Shape.fromJson(Map<String, Object> json) {
    // this can be replaced/implemnted with static method as well
    // static Shape fromJson(Map<String, Object> json) {
    final type = json['type'];
    switch (type) {
      case 'square':
        final side = json['side'];
        if (side is double) {
          return Sqaure(side);
        }
        throw UnsupportedError('Invalid or missing side property');

      case 'circle':
        final radius = json['radius'];
        if (radius is double) {
          return Circle(radius);
        }
        throw UnsupportedError('Invalid or missing side property');

      default:
        throw UnimplementedError('shape $type not recognized');
    }
  }
}

class Sqaure extends Shape {
  const Sqaure(this.side);
  final double side;

  @override
  double get area => side * side;
}

class Circle extends Shape {
  const Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;
}

void printArea(Shape shape) {
  print(shape.area);
}

void main() {
  final shapesJson = [
    {
      'type': 'square',
      'side': 10.0,
    },
    {
      'type': 'circle',
      'radius': 5.0,
    }
  ];

  final shapes = shapesJson.map((shapeJson) => Shape.fromJson(shapeJson));
  shapes.forEach(printArea);
}
