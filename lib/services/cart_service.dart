import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import '../models/product.dart';

class CartService extends ChangeNotifier {
  final List<Product> _cartItems = [];

  List<Product> get cartItems => List.unmodifiable(_cartItems);

  void addToCart(Product product) {
    var existingProduct = _cartItems.firstWhere(
      (item) => item.id == product.id,
      orElse: () => Product(
        id: '',
        name: '',
        imageUrl: '',
        price: 0,
        brand: '',
        originalPrice: 0,
      ),
    );

    if (existingProduct.id != '') {
      existingProduct.quantity += 1;
    } else {
      _cartItems.add(product);
    }

    notifyListeners(); // Notify listeners of the change
  }

  void removeFromCart(Product product) {
    _cartItems.remove(product);
    notifyListeners();
  }

  void updateQuantity(Product product, {required bool increment}) {
    var index = _cartItems.indexWhere((item) => item.id == product.id);
    if (index != -1) {
      if (increment) {
        _cartItems[index].quantity += 1;
      } else {
        if (_cartItems[index].quantity > 1) {
          _cartItems[index].quantity -= 1;
        }
      }
      notifyListeners();
    }
  }

  bool isProductInCart(Product product) {
    return _cartItems.any((item) => item.id == product.id);
  }
}
