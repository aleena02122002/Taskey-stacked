import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:taskey/views/forgetpassword/forgetpassword_viewmodel.dart';

class ForgetpasswordView extends StatelessWidget {
  const ForgetpasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => ForgetpasswordViewmodel(),
        builder: (context, viewmodel, index) {
          return Scaffold();
        });
  }
}
