import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:taskey/views/home/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewmodel(),
        builder: (context, viewmodel, index) {
          return Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              leading:
                  const Icon(Icons.dashboard_outlined, color: Colors.white),
              titleSpacing: 70,
              title: const Text(
                "Friday, 10",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_none,
                        color: Colors.white))
              ],
            ),
            body:  Column(
              children: [
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        ("Let's make a \nhabits together 🙌"),
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            fontFamily: "Poppins",
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 20),
                    Image(image: AssetImage("assets/images/ellipse.png")),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 19.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Image(
                          image: AssetImage("assets/images/Ellipse1.png"))),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0,horizontal: 24),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 260,
                          height: 150,
                          child: const Card(
                            color: Color(0xFF3580FF),
                            child: Column(
                              children: [
                                Text(
                                  "Application Design",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18),
                                ),
                                Text("Ui Design Kit",style: TextStyle(
                                    color: Color(0xFFC5DAFD),
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 260,
                          height: 150,
                          child: const Card(
                            color: Color(0xFF0A0C16),
                            child: Column(
                              children: [
                                Text(
                                  "Overlay Design",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18),
                                ),
                                Text("Ui Design Kit",style: TextStyle(
                                    color: Color(0xFFC5DAFD),
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
