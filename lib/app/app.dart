import 'package:stacked/stacked_annotations.dart';
import 'package:taskey/views/home/home.dart';
import 'package:taskey/views/signin/signin.dart';
import 'package:taskey/widget/textfeildpassword.dart';
import 'package:taskey/widget/textfeilduser.dart';

@StackedApp(routes: [

  MaterialRoute(page: SignInView,initial: true),

],
  dependencies: [
    LazySingleton(classType: TextFields),
    LazySingleton(classType: TextFieldPassword),
  ],
)

class App {}