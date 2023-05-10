// Exercise named constructor
//1. making the default constructor to named so that the user knows what kind of tempreature they should use
class Tempreature {
  Tempreature.celsius(this.celsius);
  Tempreature.farenheit(double farenheit) : celsius = (farenheit - 32) / 1.8;
  double celsius;
}

void main() {
  //2. creating instance
  final temp1 = Tempreature.celsius(30);
  temp1.celsius = 32;
  final temp2 = Tempreature.farenheit(30);
  // !!3. we can't use temp2.farenheit here, to fix this we need getters and setters, check the next document
}
