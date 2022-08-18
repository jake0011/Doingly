// ignore_for_file: non_constant_identifier_names

// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:todo_app/Screens/Welcome/welcome_screen.dart';
import 'package:todo_app/constants.dart';
import 'package:dio/dio.dart';

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
  }
}

class DataFromAPI extends StatefulWidget {
  const DataFromAPI({Key? key}) : super(key: key);

  @override
  State<DataFromAPI> createState() => _DataFromAPIState();
}

class _DataFromAPIState extends State<DataFromAPI> {
  Future getUserData()async {
  try {
    var response 
    = await Dio().get('https://doingly.herokuapp.com/todo',);
    // var jsonData = jsonDecode(response.data);
    // List<User> users = [];

    // for (var u in jsonData){
    //   User user = User(u['FirstName'])
    // } 
    print(response.data);
  } catch (e) {
    print(e);
  }
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
 }




  // @override
  // Widget build(BuildContext context) {
  //   return Container();
  // }


// class User {
//   final String FirstName, LastName, Username, Password;

//   User(this.FirstName, this.LastName, this.Username, this.Password);
  
// }
