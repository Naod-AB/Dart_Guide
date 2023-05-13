Future<void> main() async {
  final stream = Stream.fromIterable([1, 2, 3, 4]);

  await stream.forEach(print);
  final double = stream.map((value) => value * 2).where((value) => value > 3);
  await double.forEach(print);
}
