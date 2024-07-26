// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, implementation_imports, depend_on_referenced_packages

import 'package:stacked_services/src/navigation/navigation_service.dart';
import 'package:stacked_shared/stacked_shared.dart';

import '../views/AI/consts.dart';
import '../widget/textfeildname.dart';
import '../widget/textfeildpassword.dart';
import '../widget/textfeilduser.dart';

final locator = StackedLocator.instance;

Future<void> setupLocator({
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerSingleton(NavigationService());
  locator.registerLazySingleton(() => apiKey());
  locator.registerLazySingleton(() => TextFields());
  locator.registerLazySingleton(() => TextFieldPassword());
  locator.registerLazySingleton(() => TextFieldName());
}
