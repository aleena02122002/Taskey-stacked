import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:taskey/app/app.router.dart';
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: const Align(
                      alignment: Alignment.topRight,
                      child:
                          Image(image: AssetImage("assets/images/ellipse.png"))),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  child: Row(
                    children: [
                      const Image(image: AssetImage("assets/images/Ellipse1.png")),
                      const SizedBox(width: 50),
                      Column(
                        children: [
                          const ClipOval(
                            child: Image(
                              image: AssetImage("assets/images/profile2.jpg"),
                              height: 110,
                              width: 110,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.0),
                            child: Text(
                              "Alvart Ainstain",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,fontFamily: "Poppins"),
                            ),
                          ),
                          const Text("abc123@gmail.com",
                              style: TextStyle(
                                  color: Color(0xFF848A94),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,fontFamily: "Poppins")),

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: GestureDetector(
                              onTap: (){
                                viewmodel.navigationServices.navigateToEditProfile();
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
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 83.0, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(Icons.access_time_rounded, color: Colors.white),
                          Text("5", style: TextStyle(color: Colors.white)),
                          Text("On Going", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                        child: VerticalDivider(color: Color(0xFF191D30), thickness: 1),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(Icons.check_box_outlined, color: Colors.white),
                          Text("25", style: TextStyle(color: Colors.white)),
                          Text("Total Complete", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                _featureContainer(context, "Project"),
                _featureContainer(context, "Join a Team"),
                _featureContainer(context, "Setting"),
                _featureContainer(context, "My Task")
              ],
            ),
          );
        });
  }
  Widget _featureContainer(BuildContext context, String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Color(0xFF191D30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontWeight: FontWeight.w500,fontSize: 16),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

