void main() {
  Stream.fromIterable([1, 2, 3, 4]);
  Stream.value(10);
  Stream.error(Exception('Something went wrong'));
  Stream.empty();
  Stream.fromFuture(Future.delayed(Duration(seconds: 1), () => 12));
  Stream.periodic(Duration(seconds: 1), (index) => index);
}
