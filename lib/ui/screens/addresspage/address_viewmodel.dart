import 'package:stacked/stacked.dart';
import '../../../app/app.router.dart';

class AddressViewmodel extends BaseViewModel {
  int selectedAddress = 0;

  void init() {
    print("init");
  }

  void selectAddress(int index) {
    selectedAddress = index;
    notifyListeners();
  }
}
