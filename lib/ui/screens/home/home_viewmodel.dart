import 'package:shopnow/app/app.router.dart';
import 'package:shopnow/app/utils.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  int _currentindex = 0;
  int get currentIndex => _currentindex;

  void setIndex(int index) {
    _currentindex = index;
    notifyListeners();
  }

  void init() {
    print("init");
  }

  goto() {
    navigationService.navigateTo(Routes.loginView);
  }

  gotosignup() {
    navigationService.navigateTo(Routes.signupView);
  }
}
