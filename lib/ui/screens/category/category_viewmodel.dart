import 'package:shopnow/app/app.router.dart';
import 'package:shopnow/app/utils.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CategoryViewmodel extends BaseViewModel {
  void init() {
    print("init");
  }

  final List<Map<String, String>> categories = [
    {'title': 'T-Shirts', 'image': 'assets/images/ctshirtjpg.jpg'},
    {'title': 'Shirts', 'image': 'assets/images/cshirt.png'},
    {'title': 'Shoes', 'image': 'assets/images/shoeb.jpg'},
    {'title': 'Watches', 'image': 'assets/images/cwatch.png'},
    {'title': 'Trousers', 'image': 'assets/images/ctrouser.png'},
    {'title': 'Accessories', 'image': 'assets/images/caccess.png'},
  ];
}
