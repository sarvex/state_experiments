import 'dart:async';

import 'cart_item.dart';
import 'product.dart';

class CartBloc {
  Cart _cart = Cart();

  Sink<Product> get addition => additionController.sink;

  final additionController = StreamController<Product>();

  Stream<int> get itemCount => subject.stream;

  final subject = StreamController<int>();

  CartBloc() {
    additionController.stream.listen(handle);
  }
  void handle(Product p) {
    _cart.add(p);
    subject.add(_cart.itemCount);
  }
}
