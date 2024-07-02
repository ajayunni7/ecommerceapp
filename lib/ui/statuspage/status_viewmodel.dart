import 'package:shopnow/app/utils.dart';
import 'package:stacked/stacked.dart';
import '../../../app/app.router.dart';

class StatusViewmodel extends BaseViewModel {


  void init() {

  }
  void gotohome(){
    navigationService.pushNamedAndRemoveUntil(Routes.homeView);
  }

}