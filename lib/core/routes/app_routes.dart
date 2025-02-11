import 'package:flutter/material.dart';
import 'package:wed_for_weddings/core/common/screens/under_build_screen.dart';
import 'package:wed_for_weddings/core/routes/base_routes.dart';
import 'package:wed_for_weddings/test_one_screen.dart';
import 'package:wed_for_weddings/test_tow_screen.dart';

class AppRoutes{
  static const String testOne = "testOne";
  static const String testTwo = "testTwo";
static Route<void> onGenerateRoute(RouteSettings settings){
  final args = settings.arguments;
  switch (settings.name){
    case testOne:
    return BaseRoute(page: TestOneScreen());
       case testTwo:
    return BaseRoute(page: TestTowScreen());

    default:
    return BaseRoute(page: const PageUnderBuildScreen());
  }
}
}