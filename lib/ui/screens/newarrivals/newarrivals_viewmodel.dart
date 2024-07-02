import 'package:shopnow/app/app.router.dart';
import 'package:shopnow/app/utils.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:stacked/stacked.dart';

import '../../../models/product.dart';
import '../../../services/wishlist_service.dart';

class NewarrivalsViewmodel extends BaseViewModel {
  final WishlistService _wishlistService = GetIt.instance<WishlistService>();

  void init() {
    for (var product in newproducts) {
      product.isFavorite =
          _wishlistService.wishlist.any((p) => p.id == product.id);
    }
    notifyListeners();
  }

  PageController pageController = PageController(initialPage: 0);
  List<String> images = [
    'assets/images/is1.png',
    'assets/images/is2.png',
    'assets/images/is3.png',
  ];
  int _currentPage = 0;

  int get currentPage => _currentPage;

  void onPageChanged(int index) {
    _currentPage = index;
    notifyListeners();
  }

  void goToPreviousPage() {
    if (_currentPage > 0) {
      pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void goToNextPage() {
    if (_currentPage < images.length - 1) {
      pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  List<Product> newproducts = [
    Product(
      id: 'slimfitshirt',
      brand: 'Roadster',
      name: 'Slim Fit Shirt',
      imageUrl: 'assets/images/naslimfit.png',
      price: 3500,
      originalPrice: 4000,
    ),
    Product(
      id: 'casualtshirt',
      brand: 'Allen Solly',
      name: 'Casual T-Shirt',
      imageUrl: 'assets/images/nacasualt.png',
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
      imageUrl: 'assets/images/nacasioefr.png',
      price: 9500,
      originalPrice: 15000,
    ),
    Product(
      id: 'bluejeans',
      brand: 'Levis',
      name: 'Blue Jeans',
      imageUrl: 'assets/images/nabluejeans.png',
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
  }
}
