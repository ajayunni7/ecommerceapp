import 'package:shopnow/app/app.router.dart';
import 'package:shopnow/app/utils.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:stacked/stacked.dart';

import '../../../models/product.dart';
import '../../../services/cart_service.dart';
import '../checkoutpage/checkout_view.dart';

class MycartViewmodel extends BaseViewModel {
  final CartService _cartService = GetIt.instance<CartService>();
  List<Product> get cartItems => _cartService.cartItems;

  void init() {
    _cartService.addListener(_onCartServiceChanged);
    notifyListeners();
  }

  void _onCartServiceChanged() {
    notifyListeners();
  }

  void removeItem(Product product) {
    _cartService.removeFromCart(product);
  }

  void increaseQuantity(Product product) {
    _cartService.updateQuantity(product, increment: true);
    notifyListeners();
  }

  void decreaseQuantity(Product product) {
    _cartService.updateQuantity(product, increment: false);
    notifyListeners();
  }

  double get totalAmount {
    double total =
        cartItems.fold(0, (sum, item) => sum + (item.price * item.quantity));
    total += 100; // Add shipping cost
    return total;
  }

  void proceedToCheckout(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CheckoutView(
          cartItems: cartItems,
          totalAmount: totalAmount,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _cartService.removeListener(_onCartServiceChanged);
    super.dispose();
  }

  void gotoaddress() {
    navigationService.navigateTo(Routes.addressView);
  }

  void gotopaymentmethod() {
    navigationService.navigateTo(Routes.paymentView);
  }

  void gotosuccesspage() {
    navigationService.pushNamedAndRemoveUntil(Routes.successView);
  }
}
