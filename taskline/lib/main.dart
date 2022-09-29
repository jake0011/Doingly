// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taskline/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  // SystemChrome.setSystemUIOverlayStyle(
  //   SystemUiOverlayStyle(
  //     statusBarColor: Colors.black,
  //     systemNavigationBarColor: Colors.transparent,
  //   ),
  // );
  // SystemChrome.setEnabledSystemUIMode(
  //   SystemUiMode.edgeToEdge,
  // );

  runApp(
    const MyApp(),
  );
}



// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:provider/provider.dart';
// import 'package:taskline/Screens/Welcome/welcome_screen.dart';
// import 'package:taskline/constants.dart';
// import 'package:taskline/providers/appstateManger.dart';

// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp,
//     DeviceOrientation.portraitDown,
//   ]);

//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => AppStateManager(),
//       child: Builder(builder: (context) {
//         return Consumer<AppStateManager>(builder: (context, appstateManger, _) {
//           return MaterialApp(
//             debugShowCheckedModeBanner: false,
//             title: 'Flutter Auth',
//             theme: appstateManger.isDarMode
//                 ? ThemeData.dark()
//                     .copyWith(scaffoldBackgroundColor: Colors.black)
//                 : ThemeData.light().copyWith(
//                     primaryColor: kPrimaryColor,
//                     scaffoldBackgroundColor: Colors.white,
//                   ),
//             home: WelcomeScreen(),
//           );
//         });
//       }),
//     );
//   }
// }
