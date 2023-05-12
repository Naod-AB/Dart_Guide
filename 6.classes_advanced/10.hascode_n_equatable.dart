import 'package:equatable/equatable.dart'; //For overriding hascode we use this package

class Point extends Equatable {
  // add extends equatables
  Point(this.x, this.y);
  final int
      x; //!! to use equatable all your member variables should be final (immutable)
  final int y;

//1.Hascode: two objects that are equal should have the same hashCode,
  // whenever we overide the == operator we should also override the hashcode method

  @override
  // int get hasCode => super.hashCode; //2. instead of overiding hascode by ourselves we can use equatable
  List<Object?> get props =>
      [x, y]; // 3. this is how the hascode is implemented

  //4. equatable will override == operator as well so we can disbale this one
  // @override
  // bool operator ==(covariant Point other) => x == other.x && y == other.y;

//5. we can also change the two string method to work with equatable
  @override
  // String toString() => 'Point($x,$y)';
  bool get stringify => true;

  Point operator +(Point other) {
    return Point(x + other.x, y + other.y);
  }

  Point operator *(int other) {
    return Point(x * other, y * other);
  }
}

void main() {
  print(Point(0, 0) == Point(0, 0));
  print(Point(1, 1));
}
