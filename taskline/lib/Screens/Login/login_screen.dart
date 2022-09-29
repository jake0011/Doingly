import 'package:flutter/material.dart';
import 'package:taskline/Screens/Login/components/loginbody.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      // ignore: unused_local_variable
      Size size = MediaQuery.of(context).size;
    // ignore: newline-before-return
    return const Scaffold(
      body: LoginBody(),
    );
  }
}

