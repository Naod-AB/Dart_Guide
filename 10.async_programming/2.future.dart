Future<String> fetchUserOrder() => Future.delayed(Duration(seconds: 3),
    () => 'Cappuchino'); // 1. we can see this prints after 3 secods delay
// Future.delayed(
//     Duration(seconds: 3),
//     () =>
//         throw Exception('out of item')); // 2.we can also throw an exception
void main() {
  print('started');
  fetchUserOrder()
      .then((order) => print('Order is ready: $order'))
      .catchError((error) => print(
          error)) // 3. we can use catch error to handle the excetion so it doesn't intrrupt the program
      .whenComplete(() => print(
          'done')); //4. this waits for the operation and executes on complete
}
