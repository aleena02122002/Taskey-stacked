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
          return Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: const Text(
                "Edit Profile",
                style:
                TextStyle(color: Colors.white, fontFamily: "Poppins"),
              ),
              titleSpacing: 60,
              leading: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              actions: [
                TextButton(onPressed: (){}, child: Text("Save",style:
                TextStyle(color: Color(0xFF3580FF), fontFamily: "Poppins",fontSize: 14,fontWeight: FontWeight.w500),))
              ],
            ),

          );
        });
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
