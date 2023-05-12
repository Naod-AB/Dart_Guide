extension IterableX<T extends num> on Iterable<T> {
  // we made this num so that it can be generic and work with all types under num object
  T sum() => reduce((value, element) => (value + element) as T);
}

void main() {
  int sum = [1, 2, 3].sum();
  double sum1 = [1.0, 2.0, 3.0].sum();

  print(sum);
  print(sum1);
}


//check out 'Dartx' in pub.dev