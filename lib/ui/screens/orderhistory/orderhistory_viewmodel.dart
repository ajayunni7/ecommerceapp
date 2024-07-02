import 'package:shopnow/app/app.router.dart';
import 'package:shopnow/app/utils.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class OrderhistoryViewmodel extends BaseViewModel {
  void init() {
    print("init");
  }

  void gotoproductpage() {
    navigationService.navigateTo(Routes.productpageView);
  }
}
