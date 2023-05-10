class Tempreature {
  Tempreature.celsius(this.celsius);
  Tempreature.farenheit(double farenheit) : celsius = (farenheit - 32) / 1.8;

  double celsius; // stored variables

  double get farenheit => celsius * 1.8 + 32; // computed variables
  set farenheit(double farenheit) => celsius = (farenheit - 32) / 1.8;
}

void main() {
  // calling named constructor
  final temp1 = Tempreature.celsius(30);
  final temp2 = Tempreature.farenheit(90);
  print(temp1.celsius);
  temp1.celsius = 32;

  // calling getters
  print(temp1.farenheit);
  print(temp2.farenheit);

  //calling setters
  print(temp1.farenheit = 90);
}
