import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:device_preview/device_preview.dart';
import 'package:greeniser/routes/AppRoutes.dart';
import 'package:greeniser/routes/onGeneratedRoute.dart';
import 'package:greeniser/utilities/constants.dart';

// void main() => runApp(
//       DevicePreview(
//         enabled: !kReleaseMode,
//         builder: (context) => MyApp(), // Wrap your app
//       ),
//     );
String? token;
String? initApp;
void main() async {
  token = "";
  initApp = "";
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: kscaffoldBgColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Greeniser',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: initApp == "1"
          ? AppRoutes.onBoardingPage
          : token == null
              ? AppRoutes.loginScreen
              : AppRoutes.homeScreen,
      onGenerateRoute: (settings) =>
          Routegenerator.generatedRoutes(settings, context),
    );
  }
}
