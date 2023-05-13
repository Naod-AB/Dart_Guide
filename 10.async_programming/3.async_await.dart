Future<String> fetchUserOrder() =>
    // Future.delayed(Duration(seconds: 1), () => 'Cappuchino');
    Future.delayed(Duration(seconds: 3), () => throw Exception('out of item'));
Future<void> main() async {
  print('started');
  try {
    final order = await fetchUserOrder();
    print(order);
    final order2 = await fetchUserOrder();
    print(order2);
  } on Exception catch (e) {
    print(e);
  } finally {
    print('Done');
  }
}
