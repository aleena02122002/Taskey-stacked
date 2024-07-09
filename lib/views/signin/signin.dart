import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:taskey/views/signin/signin_viewmodel.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => SigninViewmodel(),
        builder: (context, viewmodel, index) {
          return SafeArea(
            child: Container(
              margin: const EdgeInsets.only(left: 15, right: 20, bottom: 0),
              child: Scaffold(
                backgroundColor: Colors.black,
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  title: const Text(
                    "Sign In",
                    style:
                        TextStyle(color: Colors.white, fontFamily: "Poppins"),
                  ),
                  titleSpacing: 60,
                  leading: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                body: const Column(
                  children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: Image(
                            image: AssetImage("assets/images/ellipse.png"))),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Welcome Back",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins",
                              fontSize: 24,
                              color: Colors.white),
                        )),
                    Text(
                      "Please Inter your email address and password for Login",
                      maxLines: 2,
                      style: TextStyle(
                          height: 24,
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
