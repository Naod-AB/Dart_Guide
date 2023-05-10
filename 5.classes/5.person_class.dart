class Person {
  Person({
    required this.name,
    required this.age,
    required this.height,
  });
  final String name;
  final int age;
  double height;

  void description() {
    print('My name is $name, I\'m $age yearls old. I\'m $height m tall  ');
  }
}

void main() {
  Person person1 = Person(name: 'Sam', age: 23, height: 1.60);
  // It;s better to use classes than maps
  person1.description();
}
