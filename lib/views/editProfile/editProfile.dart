import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:taskey/views/editProfile/editProfile_viewmodel.dart';

class EditProfile extends StatelessWidget {
  EditProfile({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => EditprofileViewmodel(),
        builder: (context, viewmodel, child) {
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
                const Padding(
                  padding:
                  EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Image(
                          image: AssetImage("assets/images/ellipse.png"))),
                ),
                Center(
                  child: Stack(
                    children: [
                      const CircleAvatar(
                        radius: 64,
                        child: Image(
                          image: AssetImage('assets/images/profile2.jpg'),
                          width: 400,
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
                              onPressed: (){
                                viewmodel.pickImage;
                              },
                              icon: const Icon(Icons.photo_camera_outlined),
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                _textFieldText("Name"),
                _textField("Full Name", nameController),
                _textFieldText("Email"),
                _textField("Email", emailController),
                _textFieldText("UserName"),
                _textField("UserName", userNameController),
                _textFieldText("Number"),
                _textField("Number", numberController),
              ],
            ),
          );
        });
  }

  Widget _textField(String text, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: SizedBox(
        width: 327,
        height: 65,
        child: TextFormField(
          controller: controller,
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
      ),
    );
  }

  Widget _textFieldText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(text,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                color: Color(0xFF848A94))),
      ),
    );
  }
}