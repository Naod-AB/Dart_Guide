class Complex {
  const Complex(this.real, this.imaginary);

  //3. Rather than using all the above instances we can use a named constructor instead
  const Complex.Zero()
      : real = 0,
        imaginary = 0;
  const Complex.identity()
      : real = 0,
        imaginary = 0;
  const Complex.real(this.real) : imaginary = 0;
  const Complex.imaginary(this.imaginary) : real = 0;

  final double real;
  final double imaginary;
}

void main() {
  //1. in the case of some special complex numbers like:
  //a. 0+i *0
  //b. 1+i *0
  //c. a+i *0
  //d. 0+i *b

//2. one way we can do this is:
  // final zero = Complex(0, 0);
  // final identity = Complex(1, 0);
  // final real = Complex(3, 0);
  // final imaginary = Complex(0, 4);

  //4. if we have named consturctors we can use this
  final zero = Complex.Zero();
  final identity = Complex.identity();
  final real = Complex.real(3);
  final imaginary = Complex.imaginary(4);
}
