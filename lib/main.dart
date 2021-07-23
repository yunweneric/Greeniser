import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'presentation/routes/AppRoutes.dart';
import 'presentation/routes/onGeneratedRoute.dart';

// void main() => runApp(
//       DevicePreview(
//         enabled: !kReleaseMode,
//         builder: (context) => MyApp(), // Wrap your app
//       ),
//     );
String? token;
String? initApp;
void main() async {
  token = null;
  initApp = "";
  runApp(MyApp());
}

// void main() {
//   token = null;
//   initApp = "";
//   runApp(
//     DevicePreview(
//       enabled: !kReleaseMode,
//       builder: (context) => MyApp(), // Wrap your app
//     ),
//   );
// }

class MyApp extends StatelessWidget {
  final Routegenerator router = Routegenerator();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Greeniser',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: initApp != "1"
          ? AppRoutes.onBoardingPage
          : token == null
              ? AppRoutes.loginScreen
              : AppRoutes.homeScreen,
      onGenerateRoute: router.generatedRoutes,
    );
  }
}
