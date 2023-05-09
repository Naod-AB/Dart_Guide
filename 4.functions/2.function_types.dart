typedef Greet = String Function(String);
//or declear it like
// typedef String Greet(String name);

String sayHi(String name) => 'Hi $name';
String sayHola(String name) => 'Hola $name';

void main() {
  welcome(sayHi, 'Sam');
  welcome(sayHola, 'Sam');

  //closures
  const multiplier = 10;
  const list = [1, 2, 3];
  final result = list.map((e) => e * multiplier);
  print(result);
}

//function as a first class object
void welcome(
    // the function has an argument called greet which accepts a function string and returns a string
    Greet greet,
    String name) {
  print('${greet(name)} Welcome to this course');
}
