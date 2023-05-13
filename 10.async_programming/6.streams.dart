// Stream are asynchronous iterables
Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (var value in stream) {
    sum += value;
  }
  return sum;
}

Future<int> sumStream2(Stream<int> stream) => stream.reduce((previous,
        element) =>
    previous +
    element); // since the method and reduce both return a future async await is not needed here

Future<void> main(List<String> args) async {
  final stream = Stream<int>.fromIterable([1, 2, 3, 4]);
  final sum = await sumStream(stream);
  final sum2 = await sumStream2(stream);
  print(sum);
  print(sum2);
}
