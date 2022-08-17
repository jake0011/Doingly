import 'package:flutter/material.dart';
import 'package:frontendpages/Screens/Login/components/loginbody.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: LoginBody(),
    );
  }
}

