// Mehotds that process Stream
// https://dart.dev/tutorials/language/streams#process-stream-methods

Future<void> main() async {
  final stream = Stream.fromIterable([1, 2, 3, 4]);

  /* 1. 
  final value = await stream.first;
  print(value);
  */

  /* 2. 
  stream.forEach(print);
  */

  var map = stream.map((value) => value * 2).where((value) => value > 3);
  await map.forEach(print);
}
