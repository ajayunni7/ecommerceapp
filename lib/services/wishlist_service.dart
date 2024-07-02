import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
import '../models/product.dart';

class WishlistService with ChangeNotifier {
  List<Product> _wishlist = [];

  List<Product> get wishlist => _wishlist;

  void addProduct(Product product) {
    if (!_wishlist.any((p) => p.id == product.id)) {
      _wishlist.add(product);
      notifyListeners();
    }
  }

  void removeProduct(Product product) {
    _wishlist.removeWhere((p) => p.id == product.id);
    notifyListeners();
  }

}