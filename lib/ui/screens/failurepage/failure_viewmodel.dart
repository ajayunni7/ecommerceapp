import 'package:shopnow/app/utils.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.router.dart';

class FailureViewmodel extends BaseViewModel {
  late AnimationController _controller;

  void init(AnimationController controller) {
    _controller = controller;
    _controller.addListener(() {
      if (_controller.isCompleted) {
        _controller.stop();
      }
      notifyListeners();
    });
  }

  void startAnimation() {
    _controller.forward();
  }

  void gotohome() {
    navigationService.pushNamedAndRemoveUntil(Routes.homeView);
  }

  void gotocart() {
    navigationService.navigateTo(Routes.mycartView);
  }
}
