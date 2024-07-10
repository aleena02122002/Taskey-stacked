import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:taskey/app/app.router.dart';
import 'package:taskey/widget/textfeildname.dart';
import '../../app/app.locator.dart';
import '../../widget/textfeildpassword.dart';
import '../../widget/textfeilduser.dart';

class SignupViewmodel extends BaseViewModel{
  final navigationServices = locator<NavigationService>();
  final TextFields textfieldService = locator<TextFields>();
  final TextFieldPassword textfieldPassword = locator<TextFieldPassword>();
  final TextFieldName textfieldName = locator<TextFieldName>();

  void navigate(){
    navigationServices.navigateTo(Routes.signInView);
  }
  nav(){
    navigationServices.navigateTo(Routes.homeView);
  }

}