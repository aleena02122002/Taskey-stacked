import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:taskey/views/calenderView/calender.dart';
import 'package:taskey/views/editProfile/editProfile.dart';
import 'package:taskey/views/home/home.dart';
import 'package:taskey/views/profileView/profile.dart';
import 'package:taskey/views/signin/signin.dart';
import 'package:taskey/views/signup/signup.dart';
import 'package:taskey/widget/textfeildname.dart';
import 'package:taskey/widget/textfeildpassword.dart';
import 'package:taskey/widget/textfeilduser.dart';

@StackedApp(routes: [

  MaterialRoute(page: SignInView,initial: false),
  MaterialRoute(page: SignupView,initial: false),
  MaterialRoute(page: HomeView,initial: false),
  MaterialRoute(page: CalenderView,initial: false),
  MaterialRoute(page: ProfileView,initial: true),
  MaterialRoute(page: EditProfile,initial: false),

],
  dependencies: [
    Singleton(classType: NavigationService),
    LazySingleton(classType: TextFields),
    LazySingleton(classType: TextFieldPassword),
    LazySingleton(classType: TextFieldName)
  ],
)

class App {}