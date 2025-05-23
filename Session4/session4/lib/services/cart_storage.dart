import 'package:shared_preferences/shared_preferences.dart';
import '../models/cart.dart';

class CartStorage {
  static const String _key = 'shopping_cart';

  static Future<void> saveCart(Map<String, CartItem> cart) async {
    final prefs = await SharedPreferences.getInstance();
    final cartJson = cart.map((key, item) => MapEntry(key, item.toJson()));
    await prefs.setStringList(_key, cartJson.values.toList());
  }

  static Future<Map<String, CartItem>> loadCart() async {
    final prefs = await SharedPreferences.getInstance();
    final items = prefs.getStringList(_key);
    if (items == null) return {};

    final Map<String, CartItem> cart = {};
    for (var itemJson in items) {
      final item = CartItem.fromJson(itemJson);
      cart[item.id] = item;
    }
    return cart;
  }
}
