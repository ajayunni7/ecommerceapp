import 'package:shopnow/app/app.router.dart';
import 'package:shopnow/app/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class SignupViewModel extends BaseViewModel {
  bool _rememberMe = false;
  final GlobalKey<FormState> signupKey = GlobalKey<FormState>();
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController cpasswordcontroller = TextEditingController();
  final RegExp emailValid = RegExp(
      r'^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$');

  bool get rememberMe => _rememberMe;

  void toggleRememberMe(bool value) {
    _rememberMe = value;
    notifyListeners(); // Notify listeners to update the UI
  }

  void init() {
    print("init");
  }

  gotohome() {
    navigationService.replaceWith(Routes.homeView);
  }

  goto() {
    navigationService.replaceWith(Routes.loginView);
  }
}
