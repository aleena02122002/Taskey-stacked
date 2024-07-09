import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:taskey/views/splash/splash_viewmodel.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SplashViewmodel(),
        builder: (context, viewmodel, index) {
          return SafeArea(
            child: Scaffold(
              body: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
