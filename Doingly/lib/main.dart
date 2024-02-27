import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:Doingly/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize shared preferences
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.blue, // Set your primary color here
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}
