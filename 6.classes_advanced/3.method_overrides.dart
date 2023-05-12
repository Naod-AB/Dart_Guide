class Animal {
  Animal({required this.age});
  final int age;

  void sleep() => print('sleep');
}

class Dog extends Animal {
  Dog({required super.age});
  void bark() => print('bark');

  @override // this overides the sleep method of the super class
  void sleep() => print('sleep');
  // void sleep() {
  //   super.sleep();
  //   print('add some more statements');
  // }
}

void main() {
  final animal = Animal(age: 10);
  final dog = Dog(age: 4);
  dog.sleep();
  dog.bark();
}
