import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:taskey/views/editProfile/editProfile_viewmodel.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => EditprofileViewmodel(),
        builder: (context, viewmodel, index) {
          return Scaffold();
        });
  }
}
