import 'package:flutter/material.dart';
import 'package:todo_app/Screens/Welcome/welcome_screen.dart';
import 'package:todo_app/constants.dart';
// import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home:WelcomeScreen(),
    );


// void getHttp() async {
//   try {
//     var response = await Dio().get('http://www.google.com');
//     print(response);
//   } catch (e) {
//     print(e);
//   }
// }

  }
}
