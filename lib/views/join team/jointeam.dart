import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:taskey/views/join%20team/jointeam_viewmodel.dart';

class JointeamView extends StatelessWidget {
  const JointeamView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => JointeamViewmodel(),
        builder: (context, viewmodel, index) {
          return Scaffold();
        });
  }
}
