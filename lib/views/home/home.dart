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
          return Scaffold();
        });
  }
}
