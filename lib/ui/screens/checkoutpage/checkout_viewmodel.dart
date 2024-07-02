import 'package:shopnow/app/app.router.dart';
import 'package:shopnow/app/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:stacked/stacked.dart';

import 'package:fluttertoast/fluttertoast.dart';

import 'checkout_view.dart';

class CheckoutViewmodel extends BaseViewModel {
  late Razorpay _razorpay;

  void init() {
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void dispose() {
    _razorpay.clear(); // Removes all listeners
    super.dispose();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    SmartDialog.dismiss();
    Fluttertoast.showToast(
        msg: "SUCCESS: " + response.paymentId!,
        toastLength: Toast.LENGTH_SHORT);
    navigationService.pushNamedAndRemoveUntil(Routes.successView);
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    SmartDialog.dismiss();
    Fluttertoast.showToast(
        msg: "ERROR: " + response.code.toString() + " - " + response.message!,
        toastLength: Toast.LENGTH_SHORT);
    navigationService.pushNamedAndRemoveUntil(Routes.failureView);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    SmartDialog.dismiss();
    Fluttertoast.showToast(
        msg: "EXTERNAL_WALLET: " + response.walletName!,
        toastLength: Toast.LENGTH_SHORT);
  }

  void openCheckout(double totalAmount) {
    var options = {
      'key': 'rzp_live_ILgsfZCZoFIKMb', // Replace with your Razorpay key
      'amount': totalAmount * 100, // Amount in paise
      'name': 'Test Payment',
      'description': 'Payment for the product',
      'prefill': {'contact': '1234567890', 'email': 'test@razorpay.com'},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      SmartDialog.show(
        builder: (context) =>
            CustomLoadingWidget(), // Show the custom loading widget
      );
      _razorpay.open(options);
    } catch (e) {
      SmartDialog.dismiss();
      debugPrint(e.toString());
    }
  }

  void gotoaddress() {
    navigationService.navigateTo(Routes.addressView);
  }

  void gotopaymentmethod() {
    navigationService.navigateTo(Routes.paymentView);
  }
}
