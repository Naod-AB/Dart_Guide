class Complex {
  const Complex(this.real,
      this.imaginary); //2. we need to make our constructor const as well, if we all our class variables are final we should consider making our constructor as const
  final double real;
  final double imaginary;
}

void main() {
  const complex = Complex(1, 2); // 1. if we make a class instance const

  const list = [
    Complex(1, 2),
    Complex(3, 4),
  ];

  print('real:  ${complex.real} imaginary: ${complex.imaginary} ');

  list.forEach((element) =>
      print('real:  ${element.real} imaginary: ${element.imaginary} '));
}
