import 'package:flutter/material.dart';
import 'cart_bloc.dart';

class CartProvider extends InheritedWidget {
  final CartBloc cartBlock;

  CartProvider({this.cartBlock, child}) : super(child: child);

  static CartProvider of(BuildContext context) => context.inheritFromWidgetOfExactType(CartProvider);

  @override
  bool updateShouldNotify(CartProvider oldWidget) {
    return cartBlock != oldWidget.cartBlock;
  }
}
