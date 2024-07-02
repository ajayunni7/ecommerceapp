import 'package:shopnow/app/app.router.dart';
import 'package:shopnow/app/utils.dart';
import 'package:shopnow/services/wishlist_service.dart';
import 'package:shopnow/ui/screens/productpage/productpage_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:stacked/stacked.dart';

import '../../../models/product.dart';
import '../catalogue/catalogue_viewmodel.dart';

class PopularViewmodel extends BaseViewModel {
  final WishlistService _wishlistService = GetIt.instance<WishlistService>();

  PopularViewmodel() {
    _wishlistService.addListener(_onWishlistChanged);
  }
  void init() {
    for (var product in popproducts) {
      product.isFavorite =
          _wishlistService.wishlist.any((p) => p.id == product.id);
    }
    notifyListeners();
  }

  List<Product> popproducts = [
    Product(
      id: 'nikeairmaxap',
      brand: 'Nike',
      name: 'Nike Air Max AP',
      imageUrl: 'assets/images/nikeairmaxap.png',
      price: 6000,
      originalPrice: 7000,
    ),
    Product(
      id: 'navyslimfitshirt',
      brand: 'Levis',
      name: 'Navy Slim Fit Shirt',
      imageUrl: 'assets/images/navyslimfitshirt.png',
      price: 2000,
      originalPrice: 4000,
    ),
    Product(
      id: 'blueslimfittshirt',
      brand: 'Levis',
      name: 'Blue Slim Fit T-Shirt',
      imageUrl: 'assets/images/blueslimfittshirt.png',
      price: 3500,
      originalPrice: 4000,
    ),
    Product(
      id: 'blackcasualtrousers',
      brand: 'Allen Solly',
      name: 'Black Casual Trousers',
      imageUrl: 'assets/images/bluecasualtrousers.png',
      price: 2500,
      originalPrice: 4000,
    ),
    Product(
      id: 'nikeimpact4v',
      brand: 'Nike',
      name: 'Nike Impact 4V',
      imageUrl: 'assets/images/nikeimpact4v.png',
      price: 6000,
      originalPrice: 7000,
    ),
    Product(
      id: 'ga2100p1a',
      brand: 'Casio',
      name: 'GA-2100P-1A',
      imageUrl: 'assets/images/casioga2100p.png',
      price: 9500,
      originalPrice: 15000,
    ),
    Product(
      id: 'efr574d',
      brand: 'Casio',
      name: 'EFR-574D',
      imageUrl: 'assets/images/casioefr.png',
      price: 9500,
      originalPrice: 15000,
    ),
    Product(
      id: 'marshal',
      brand: 'Rayban',
      name: 'Marshal',
      imageUrl: 'assets/images/raybanmarshal.png',
      price: 2000,
      originalPrice: 4000,
    ),
  ];

  void toggleFavorite(Product product) {
    product.isFavorite = !product.isFavorite;
    if (product.isFavorite) {
      _wishlistService.addProduct(product);
    } else {
      _wishlistService.removeProduct(product);
    }
    notifyListeners();
    GetIt.instance<CatalogueViewmodel>().notifyListeners();
    GetIt.instance<ProductpageViewmodel>().notifyListeners();
  }

  void _onWishlistChanged() {
    for (var product in popproducts) {
      product.isFavorite =
          _wishlistService.wishlist.any((p) => p.id == product.id);
    }
    notifyListeners();
  }

  @override
  void dispose() {
    _wishlistService.removeListener(_onWishlistChanged);
    super.dispose();
  }
}
