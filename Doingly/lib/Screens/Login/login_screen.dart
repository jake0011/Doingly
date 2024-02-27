import 'package:flutter/material.dart';
import 'package:Doingly/Screens/Login/components/loginbody.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the size of the screen
    Size size = MediaQuery.of(context).size;

    // Return a Scaffold with the LoginBody widget as the body
    return Scaffold(
      body: LoginBody(),
    );
  }
}
