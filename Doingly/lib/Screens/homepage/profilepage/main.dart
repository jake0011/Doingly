import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Doingly/Screens/homepage/profilepage/page/profile_page.dart';
import 'package:get/get.dart';

// Entry point of the application
Future main() async {
  // Ensure that Flutter is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Set preferred orientations to portrait mode
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // Run the application
  runApp(MyApp());
}

// Root widget of the application
class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static final String title = 'User Profile';

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: ProfilePage(),
    );
  }
}
