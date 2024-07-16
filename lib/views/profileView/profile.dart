import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:taskey/views/profileView/profile_viewmodel.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ProfileViewmodel(),
        builder: (context, viewmodel, index) {
          return Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: const Text(
                "Profile",
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
                        Image(image: AssetImage("assets/images/ellipse.png"))),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70.0),
                  child: Row(
                    children: [
                      const Image(image: AssetImage("assets/images/Ellipse1.png")),
                      const SizedBox(width: 50),
                      Column(
                        children: [
                          const ClipOval(
                            child: Image(
                              image: AssetImage("assets/images/profile2.jpg"),
                              height: 140,
                              width: 140,
                            ),
                          ),
                          const Text(
                            "Name",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          const Text("abc123@gmail.com",
                              style: TextStyle(
                                  color: Color(0xFF848A94),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400)),
                          GestureDetector(
                            onTap: (){

                            },
                            child: Container(
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: const Color(0xFF3580FF))),
                                child: const Center(
                                    child: Text(
                                  "Edit",
                                  style: TextStyle(color: Colors.white),
                                ))),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
