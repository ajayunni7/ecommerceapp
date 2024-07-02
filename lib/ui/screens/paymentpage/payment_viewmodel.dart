import 'package:shopnow/app/utils.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

import '../../../app/app.router.dart';

class PaymentViewmodel extends BaseViewModel {
  String? _selectedPaymentMethod;

  String? get selectedPaymentMethod => _selectedPaymentMethod;

  void selectPaymentMethod(String? method) {
    _selectedPaymentMethod = method;
    notifyListeners();
  }

  void init() {
    print("init");
  }
}
