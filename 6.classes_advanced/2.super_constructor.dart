class Animal {
  Animal({required this.age}); // constructors are n't inherited in subclasses
  // this is called super Class
  final int age;

  void sleep() => print('sleep');
}

class Dog extends Animal {
  Dog({required super.age});
  //or
  // Dog({required int age}) : super(age: age);

  // this is called subclass or inheritance
  void bark() => print('bark');
}

void main() {
  final animal = Animal(age: 10);
  final dog = Dog(age: 4);
  dog.sleep();
  dog.bark();
}
