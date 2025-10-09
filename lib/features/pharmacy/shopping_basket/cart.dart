import 'package:flutter/material.dart';
import '../models/product.dart';
import 'cart_item.dart'; 

class Cart extends ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get basketProduct => _items;

  double get totalPrice => _items.fold(
      0, (sum, item) => sum + item.product.price * item.quantity);

  int get count => _items.fold(0, (sum, item) => sum + item.quantity);

  void add(Product product) {
    final index = _items.indexWhere((item) => item.product.name == product.name);
    if (index >= 0) {
      _items[index].quantity += 1; 
    } else {
      _items.add(CartItem(product: product)); 
    }
    notifyListeners();
  }

  void remove(Product product) {
    final index = _items.indexWhere((item) => item.product.name == product.name);
    if (index >= 0) {
      if (_items[index].quantity > 1) {
        _items[index].quantity -= 1; 
      } else {
        _items.removeAt(index); 
      }
      notifyListeners();
    }
  }
}
