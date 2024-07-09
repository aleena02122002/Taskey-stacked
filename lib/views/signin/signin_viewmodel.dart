import 'package:stacked/stacked.dart';
import 'package:taskey/app/app.locator.dart';
import 'package:taskey/widget/textfeildpassword.dart';
import 'package:taskey/widget/textfeilduser.dart';

class SigninViewmodel extends BaseViewModel{
final TextFields textfieldService = locator<TextFields>();
final TextFieldPassword textfieldPassword = locator<TextFieldPassword>();
}