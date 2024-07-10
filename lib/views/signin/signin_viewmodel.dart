import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:taskey/app/app.locator.dart';
import 'package:taskey/app/app.router.dart';
import 'package:taskey/widget/textfeildpassword.dart';
import 'package:taskey/widget/textfeilduser.dart';

class SigninViewmodel extends BaseViewModel{
  final navigationServices = locator<NavigationService>();
  final TextFields textfieldService = locator<TextFields>();
  final TextFieldPassword textfieldPassword = locator<TextFieldPassword>();

  void navigate(){
    navigationServices.navigateTo(Routes.signupView);
  }
  nav(){
    navigationServices.navigateTo(Routes.homeView);
  }


}