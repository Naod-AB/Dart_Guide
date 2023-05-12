class Point {
  Point(this.x, this.y);
  final int x;
  final int y;

  @override
  String toString() => 'Point($x,$y)';

  @override
  bool operator ==(covariant Point other) {
    //6. here we need to change Object other to covariant Point other
    //2. this is called operator overload
    if (other is Point) {
      //8.we can remove the if condition now
      // 3. this will help us compare the 2 instances of the same class
      return x == other.x && y == other.y;
    }
    return false;
  }
}

void main() {
  //1. this should be true but its currently false
  print(Point(0, 0) == Point(0, 0));
  //4. now it returns true

//5. but this code returns false, but it does run, so in order for it to stop running we can use covariant
  // print(Point(0, 0) == '12');
//7. now this returns an error and doesn't allow us to compile or run
}
