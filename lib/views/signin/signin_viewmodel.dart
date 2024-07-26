import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:taskey/app/app.locator.dart';
import 'package:taskey/app/app.router.dart';
import 'package:taskey/widget/textfeildpassword.dart';
import 'package:taskey/widget/textfeilduser.dart';

class SigninViewmodel extends BaseViewModel{
  final navigationServices = locator<NavigationService>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final RegExp userEmail =
  RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

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

  loginUser(context) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      emailController.clear();
      passwordController.clear();
      print("=============== LoggedIn Successfully ===================");
      navigationServices.navigateTo(Routes.homeView);

    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    } catch (e) {
      print("=============== Catch ===================");
      print(e);
    }
  }

  void navigate(){
    navigationServices.navigateTo(Routes.signupView);
  }
  nav(){
    navigationServices.navigateTo(Routes.homeView);
  }


}