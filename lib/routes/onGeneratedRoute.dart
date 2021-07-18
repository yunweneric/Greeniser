import 'package:flutter/material.dart';
import 'package:greeniser/screens/OnBoarding/OnBoadingPage.dart';
import 'package:greeniser/screens/app/HomePage.dart';
import 'package:greeniser/screens/app/MainPage.dart';
import 'package:greeniser/screens/auth/login.dart';
import 'package:greeniser/screens/auth/signUp.dart';

import 'AppRoutes.dart';

class Routegenerator {
  static Route<dynamic> generatedRoutes(RouteSettings settings, context) {
    final args = settings.arguments;
    switch (settings.name) {
      case (AppRoutes.loginScreen):
        return MaterialPageRoute(builder: (context) => LoginScreen());

      case (AppRoutes.onBoardingPage):
        return MaterialPageRoute(builder: (context) => OnBoardingPage());

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
