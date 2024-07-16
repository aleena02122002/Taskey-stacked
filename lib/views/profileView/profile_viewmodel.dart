import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:taskey/app/app.locator.dart';
import 'package:taskey/app/app.router.dart';

class ProfileViewmodel extends BaseViewModel{
  final navigationServices = locator<NavigationService>();

  void navigate(){
    navigationServices.navigateTo(Routes.calenderView);
  }
}