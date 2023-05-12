abstract class InterfaceA {
  void a() {}
}

abstract class InterfaceB {
  void b() {}
}

class AB implements InterfaceA, InterfaceB {
  // class can implement more than 1 interface
  @override
  void a() {}

  @override
  void b() {}
}

abstract class Base {
  void foo(); // abstract methods
  void bar() => print('bar');
}

// If you implement a class you must override all of its methods,
//in extend only the methods that are not implemented are required
class SubClass extends Base {
  @override
  void foo() => print('foo');
}
