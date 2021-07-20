import 'package:flutter/material.dart';

import '../screens/OnBoarding/OnBoadingPage.dart';
import '../screens/app/HomePage.dart';
import '../screens/app/MainPage.dart';
import '../screens/app/TodayPage.dart';
import '../screens/auth/login.dart';
import '../screens/auth/signUp.dart';
import 'AppRoutes.dart';

class Routegenerator {
  Route<dynamic> generatedRoutes(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case (AppRoutes.loginScreen):
        return MaterialPageRoute(builder: (context) => LoginScreen());

      case (AppRoutes.onBoardingPage):
        return MaterialPageRoute(builder: (context) => OnBoardingPage());

      case (AppRoutes.today):
        return MaterialPageRoute(builder: (context) => TodayPage());

      case (AppRoutes.createAccount):
        return MaterialPageRoute(builder: (context) => SignUp());

      case (AppRoutes.mainPage):
        return MaterialPageRoute(builder: (context) => MainPage());

      case (AppRoutes.homeScreen):
        return MaterialPageRoute(builder: (context) => HomePage());

      default:
        return MaterialPageRoute(builder: (context) => LoginScreen());
    }
  }
}
