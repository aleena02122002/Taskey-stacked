import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:taskey/views/signin/signin_viewmodel.dart';
import 'package:taskey/widget/textfeilduser.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SigninViewmodel>.nonReactive(
      viewModelBuilder: () => SigninViewmodel(),
      builder: (context, viewmodel, child) {
        return SafeArea(
          child: Container(
            margin: const EdgeInsets.only(left: 15, right: 20, bottom: 0),
            child: Scaffold(
              backgroundColor: Colors.black,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                title: const Text(
                  "Sign In",
                  style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
                ),
                titleSpacing: 60,
                leading: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
              body: Column(
                children: [
                  const Align(
                    alignment: Alignment.topRight,
                    child:
                        Image(image: AssetImage("assets/images/ellipse.png")),
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
                  SizedBox(height: 10.0),
                  viewmodel.textfieldService,
                  viewmodel.textfieldPassword,
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            fontSize: 14,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(327, 48),
                        backgroundColor: Color(0xFF3580FF)),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Signin with",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                        fontSize: 14,
                        color: Color(0xFF868D95)),
                  ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: (){},
                            child: Container(
                              height: 58,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: Color(0xFF191D30)
                                )
                              ),
                              child: Image(image: AssetImage("assets/images/path4.png"),height: 26,width: 21,),
                            ),
                          ),
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: (){},
                            child: Container(
                              height: 58,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                      color: Color(0xFF191D30)
                                  )
                              ),
                              child: Image(image: AssetImage("assets/images/Group 659.png"),height: 26,width: 21,),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
