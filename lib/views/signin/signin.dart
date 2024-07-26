import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:taskey/app/app.router.dart';
import 'package:taskey/views/home/home.dart';
import 'package:taskey/views/signin/signin_viewmodel.dart';

class SignInView extends StatelessWidget {
   SignInView({super.key});



  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SigninViewmodel>.nonReactive(
      viewModelBuilder: () => SigninViewmodel(),
      builder: (context, viewmodel, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: SafeArea(
            child: Container(
              margin: const EdgeInsets.only(left: 15, right: 20, bottom: 0),
              child: Scaffold(
                resizeToAvoidBottomInset: true,
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
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.topRight,
                        child: Image(
                            image: AssetImage("assets/images/ellipse.png")),
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Welcome Back",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins",
                              fontSize: 24,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Align(
                        alignment: Alignment(-1, 0),
                        child: Text(
                          "Please enter your email address \nand password for Login",
                          maxLines: 2,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                              fontSize: 14,
                              color: Color(0xFF868D95)),
                        ),
                      ),
                      const SizedBox(height: 26.0),

                      _textFeild("Email", viewmodel.emailController),
                      SizedBox(height: 26),
                      _textFeild("Password", viewmodel.passwordController),
                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: "Poppins",
                                fontSize: 14,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          viewmodel.loginUser(context);

                        },
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(327, 48),
                            backgroundColor: const Color(0xFF3580FF)),
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                              fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        "Signin with",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            fontSize: 14,
                            color: Color(0xFF868D95)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 107.0, vertical: 30),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 58,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border:
                                        Border.all(color: const Color(0xFF191D30))),
                                child: const Image(
                                  image: AssetImage("assets/images/path4.png"),
                                  height: 26,
                                  width: 21,
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 58,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border:
                                        Border.all(color: const Color(0xFF191D30))),
                                child: const Image(
                                  image:
                                      AssetImage("assets/images/Group 659.png"),
                                  height: 26,
                                  width: 21,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: "Not Registered Yet? ",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: "Sign Up",
                              style: const TextStyle(
                                color: Color(0xFF3580FF),
                                fontFamily: "Poppins",
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () {
                                viewmodel.navigationServices.navigateToSignupView();
                              },
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
  _textFeild(String text, TextEditingController controllers){
    return SizedBox(
      width: 327,
      height: 60,
      child: TextFormField(
        controller: controllers,
        decoration:  InputDecoration(
          hintText: text,
          hintStyle: TextStyle(color: Color(0xFF848A94)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(color: Color(0xFF191D30)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(
              color: Color(0xFF3580FF),
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
