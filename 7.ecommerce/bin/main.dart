import 'dart:io';

import 'package:test/cart.dart';
import 'package:test/check_out.dart';
import 'package:test/choose_product.dart';

void main() {
  final cart = Cart();
  while (true) {
    stdout.write(
        'What do you want to do? (v)iew items, (a)dd item, (c)heckout: ');
    final line = stdin.readLineSync();
    if (line == 'a') {
      final product = chooseProduct();
      if (product != null) {
        cart.addProduct(product);
        print(cart);
      }
    } else if (line == 'v') {
      print(cart);
    } else if (line == 'c') {
      if (checkout(cart)) {
        break;
      }
    }
  }
}
