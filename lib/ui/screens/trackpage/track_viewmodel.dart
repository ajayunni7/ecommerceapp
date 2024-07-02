import 'package:shopnow/app/utils.dart';
import 'package:stacked/stacked.dart';
import '../../../app/app.router.dart';

class TrackViewmodel extends BaseViewModel {
  void init() {
    print("init");
  }

  void gotostatuspage() {
    navigationService.navigateTo(Routes.statusView);
  }
}
