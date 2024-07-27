import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:taskey/views/setting/setting_viewmodel.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SettingViewmodel(),
        builder: (context, viemodel, index) {
          return Scaffold(
            appBar:  AppBar(
              backgroundColor: Colors.transparent,
              title: const Text(
                "Setting",
                style:
                TextStyle(color: Colors.white, fontFamily: "Poppins"),
              ),
              titleSpacing: 60,
              leading: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            body: Column(
              children: [

              ],
            ),
          );
        });
  }
}
