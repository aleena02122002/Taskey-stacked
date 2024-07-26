import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:taskey/app/app.router.dart';
import 'package:taskey/widget/textfeildname.dart';
import '../../app/app.locator.dart';
import '../../widget/textfeildpassword.dart';
import '../../widget/textfeilduser.dart';

class SignupViewmodel extends BaseViewModel{
  final navigationServices = locator<NavigationService>();
  final  controllerName = TextEditingController();

  final  controllerEmail = TextEditingController();

  final  controllerPassword = TextEditingController();


  RegExp userEmail = RegExp(r'^[a-zA-Z0-9._]+@[a-zA-Z0-9]+\.[a-zA-Z]+');

  String? emailError(String? value) {
    if (value == null || value.isEmpty) {
      return 'Fill this field';
    } else if (!userEmail.hasMatch(value)) {
      return 'Invalid Email';
    }
    return null;
  }

  String? passwordError(String? value) {
    if (value == null || value.isEmpty) {
      return 'Fill this field';
    } else if (value.length < 5) {
      return 'Password must be at least 5 characters long';
    }
    return null;
  }

  registerUser(context) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: controllerEmail.text,
        password: controllerPassword.text,
      );
      print("=============== Registerd Successfully ===================");
      navigationServices.navigateTo(Routes.homeView);
      controllerEmail.clear();
      controllerPassword.clear();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print("=============== Catch ===================");
      print(e);
    }
  }


  void navigate(){
    navigationServices.navigateTo(Routes.signInView);
  }
  nav(){
    navigationServices.navigateTo(Routes.homeView);
  }

}