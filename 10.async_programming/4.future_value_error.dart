Future<String> fetchUserOrder() =>
    Future.delayed(Duration(seconds: 1), () => 'Cappuchino');

Future<String> fetchUserOrder2() => Future.value('Espresso');

Future<String> fetchUserOrder3() => Future.error(Exception('our of item'));
Future<void> main() async {
  print('started');
  try {
    final order = await fetchUserOrder();
    print(order);
    final order2 = await fetchUserOrder2();
    print(order2);
    final order3 = await fetchUserOrder3();
    print(order3);
  } on Exception catch (e) {
    print(e);
  } finally {
    print('Done');
  }
}
