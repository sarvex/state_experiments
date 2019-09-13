import 'cart_item.dart';
import 'product.dart';
import 'package:scoped_model/scoped_model.dart';

class CartModel extends Model {
  final _cart = Cart();

  int get itemCount => _cart.itemCount;

  void add(Product p) {
    _cart.add(p);
    notifyListeners();
  }
}
