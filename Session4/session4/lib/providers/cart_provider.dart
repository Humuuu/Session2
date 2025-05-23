import '../models/cart.dart';
import '../services/cart_storage.dart';
import 'package:flutter/foundation.dart';

class CartProvider with ChangeNotifier {
  Map<String, CartItem> _items = {};
  Map<String, CartItem> get items => _items;

  CartProvider() {
    loadCart();
  }

  Future<void> loadCart() async {
    _items = await CartStorage.loadCart();
    notifyListeners();
  }

  void addItem(String productId, String title, double price) {
    if (_items.containsKey(productId)) {
      _items[productId]!.quantity += 1;
    } else {
      _items[productId] = CartItem(id: productId, title: title, price: price, quantity: 1);
    }
    notifyListeners();
    saveCart();
  }

  Future<void> saveCart() async {
    await CartStorage.saveCart(_items);
  }

  double get totalPrice =>
      _items.values.fold(0, (sum, item) => sum + (item.price * item.quantity));
}