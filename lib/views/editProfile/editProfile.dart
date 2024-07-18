import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:taskey/views/editProfile/editProfile_viewmodel.dart';

class EditProfile extends StatelessWidget {
   EditProfile({super.key});
  TextEditingController nameController = TextEditingController();
   TextEditingController emailController = TextEditingController();
   TextEditingController userNameController = TextEditingController();
   TextEditingController numberController = TextEditingController();


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
                style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
              ),
              titleSpacing: 60,
              leading: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              actions: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Save",
                      style: TextStyle(
                          color: Color(0xFF3580FF),
                          fontFamily: "Poppins",
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ))
              ],
            ),
            body: Column(
              children: [
                Center(
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: const Image(
                            image: AssetImage('assets/images/profile2.jpg'),
                            width: 400,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color(0xFF002055),
                          ),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.photo_camera_outlined),
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                _textFeildText("Name"),
                _textFeild("Full Name", nameController)
              ],
            ),
          );
        });
  }

  _textFeild(String text, TextEditingController controllers) {
    return SizedBox(
      width: 327,
      height: 60,
      child: TextFormField(
        controller: controllers,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: const TextStyle(color: Color(0xFF848A94)),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(color: Color(0xFF191D30)),
          ),
          focusedBorder: const OutlineInputBorder(
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

  _textFeildText(String text) {
    return Text(text,
        style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: "Poppins",
            color: Color(0xFF848A94)));
  }
}
