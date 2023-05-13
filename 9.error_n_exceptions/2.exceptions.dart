class Fraction {
  Fraction(this.numerator, this.denominator) {
    if (denominator == 0) {
      throw UnsupportedError(
          'Can\'t be divided by 0'); //1. throwing an custom error
    }
  }
  final int numerator;
  final int denominator;

  double get value => numerator / denominator;
}

void main() {
  //2. on a try catch block we can make exceptions specific by typing on [specific exception name]
  try {
    final f = Fraction(3, 0);
    print(f.value);
  } on UnsupportedError catch (e, s) {
    print('${e.toString()} ${s}');
    rethrow; //3. raise the exception after try catch block finishes or after finally
  } on Exception catch (e) {
    print(e.toString());
  } finally {
    print('Done');
  }

  print(
      'Done Done'); //4. this will not be executed when rethrow is used  because its outside the block
}
