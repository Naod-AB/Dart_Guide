Future<int> sumStream2(Stream<int> stream) => stream.reduce((previous,
        element) =>
    previous +
    element); //1. since the method and reduce both return a future async await is not needed here

Stream<int> countStream(int n) async* {
  // stream is asynchronous
  for (var i = 0; i <= n; i++) {
    await Future.delayed(Duration(seconds: 1));
    print(i);
    yield (i); //2. this returns a stream rather than a future and we use async*
  }
}

Iterable<int> count(int n) sync* {
  // this is a sync function Iterable is a synchronous
  for (var i = 0; i <= n; i++) {
    yield (i);
  }
}

Future<void> main(List<String> args) async {
  final streamCount = countStream(4);
  print('stream count is ${streamCount}');
  final sum = await sumStream2(streamCount);
  print(sum);
}
