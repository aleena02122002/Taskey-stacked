import 'package:stacked/stacked_annotations.dart';
import 'package:taskey/views/home/home.dart';
import 'package:taskey/views/signin/signin.dart';

@StackedApp(routes: [

  MaterialRoute(page: SignInView,initial: true),

],
  dependencies: [

  ],
)

class App {}