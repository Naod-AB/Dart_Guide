import 'dart:io';

import 'package:test/product.dart';

import 'all_products.dart';

Product? chooseProduct() {
  final productsList =
      allProducts.map((product) => product.displayName).join('\n');
  stdout.write('Available products:\n$productsList\nYour choice: ');
  final line = stdin.readLineSync();
  for (var product in allProducts) {
    if (product.initial == line) {
      return product;
    }
  }
  print('Not found');
  return null;
}
