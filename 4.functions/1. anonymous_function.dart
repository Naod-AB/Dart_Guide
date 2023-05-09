void main() {
  //Anonymous function
  final sayHi = (String name) => 'Hi $name';
  print(sayHi('Sam'));

  welcome(sayHi, 'Sam');
}

//function as a first class object
void welcome(
    // the function has an argument called greet which accepts a function string and returns a string
    String Function(String) greet,
    String name) {
  print('${greet(name)} Welcome to this course');
}
