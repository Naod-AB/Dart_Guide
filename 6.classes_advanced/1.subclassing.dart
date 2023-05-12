class Animal {
  // this is called super Class
  void sleep() => print('sleep');
}

class Dog extends Animal {
  // this is called subclass or inheritance
  void bark() => print('bark');
}

void main() {
  final animal = Dog();
  animal.sleep();
  animal.bark();
  // final animal2 = Animal();
  //animal2.bark(); this doesn't work because animal class doesn't have access to Dog class
}
