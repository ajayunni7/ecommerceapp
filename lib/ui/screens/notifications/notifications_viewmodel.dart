import 'package:shopnow/app/app.router.dart';
import 'package:shopnow/app/utils.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class NotificationsViewModel extends BaseViewModel {
  List<Map<String, dynamic>> notifications = [];

  void init() {
    notifications = [
      {
        'title': 'Flash Sale Alert - Watches:',
        'description': 'Limited Time Offer!',
        'details': 'Get up to 50% Off on luxury watches. Don\'t miss out!',
        'image': 'assets/images/gut2.jpg',
        'isNew': true,
      },
      {
        'title': 'New Arrival - T-Shirts:',
        'description': 'Explore our latest collection of trendy t-shirts.',
        'details': 'Shop now for fresh styles!',
        'image': 'assets/images/tshirt.jpg',
        'isNew': false,
      },
      {
        'title': 'Buy One, Get One Sunglasses Special:',
        'description': 'Buy One, Get One!',
        'details':
            'Shop for one pair of sunglasses and get the second pair at half price. Share the style!',
        'image': 'assets/images/sunglasses.jpg',
        'isNew': false,
      },
    ];
    notifyListeners();
  }
}
