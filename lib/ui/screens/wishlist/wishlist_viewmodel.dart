import 'package:shopnow/app/app.router.dart';
import 'package:shopnow/app/utils.dart';
import 'package:shopnow/services/wishlist_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../models/product.dart';
import '../catalogue/catalogue_viewmodel.dart';

import 'dart:async';
import 'package:shopnow/models/product.dart';
import 'package:shopnow/services/wishlist_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:stacked/stacked.dart';

class WishlistViewModel extends BaseViewModel {
  final WishlistService _wishlistService = GetIt.instance<WishlistService>();

  List<Product> get wishlist => _wishlistService.wishlist;

  void init() {
    _wishlistService.addListener(
      () {
        notifyListeners();
        GetIt.instance<CatalogueViewmodel>().notifyListeners();
      },
    );
  }

  void toggleFavorite(Product product) {
    product.isFavorite = !product.isFavorite;
    if (product.isFavorite) {
      _wishlistService.addProduct(product);
    } else {
      _wishlistService.removeProduct(product);
    }
    notifyListeners();
    GetIt.instance<CatalogueViewmodel>().notifyListeners();
  }
}
