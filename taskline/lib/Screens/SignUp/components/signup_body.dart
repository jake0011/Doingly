// ignore_for_file: unused_local_variable

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskline/Screens/Login/login_screen.dart';
import 'package:taskline/Screens/homepage/homepage.dart';
import 'package:taskline/component/already_have_an_account.dart';
import 'package:taskline/component/rounded_button.dart';
import 'package:taskline/component/rounded_input_field.dart';
import 'package:taskline/component/rounded_password_field.dart';

import '../../Login/components/background.dart';
import '../../Login/components/ordivider.dart';
import '../../Login/components/ordivider_screen.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({
    Key? key,
    required this.child,
  }) : super(key: key);

  Future getUserData() async {
    try {
      // = await Dio().get('https://jsonplaceholder.typicode.com/posts/1', data:{'username': 'kofi','password': "ama"});
      var response = await Dio().get(
        'https://doingly.herokuapp.com/signup',
        // data:{'username': 'karam','password': "ama"}
      );
      print(response.data);
    } catch (e) {
      print(e);
    }
  }

  Widget build(BuildContext context) {
    late String username;
    late String password;
    late String firstName;
    late String lastName;
    Size size = MediaQuery.of(context).size;
    // ignore: newline-before-return
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Text(
              "SIGN UP!",
              style: GoogleFonts.lora(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          // RoundedInputField(
          //   hintText: "First Name:",
          //   // ignore: no-empty-block
          //   onChanged: (value) {},
          // ),

          RoundedInputField(
            hintText: "Full Name:",
            // ignore: no-empty-block
            onChanged: (value) {},
          ),

          RoundedInputField(
            hintText: "Username:",
            // ignore: no-empty-block
            onChanged: (value) {},
          ),

          // ignore: no-empty-block
          RoundedPasswordField(onChanged: (value) {}),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.5),
            child: RoundedButton(
              text: "SIGN UP",
              onPressed:
                  // (){
                  //   getUserData();
                  // }
                  () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyHomePage(
                            title: '',
                          ),),
                );
              },
            ),
          ),

          AlreadyHaveAnAccountCheck(
            login: false,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
          ),
          Ordivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocialIcon(
                iconSrc: "assets/icons/twitter.svg",
                // ignore: no-empty-block
                onPressed: () {},
              ),
              SocialIcon(
                iconSrc: "assets/icons/chat.svg",
                // ignore: no-empty-block
                onPressed: () {},
              ),
              SocialIcon(
                iconSrc: "assets/icons/google-plus.svg",
                // ignore: no-empty-block
                onPressed: () {},
              ),
              SocialIcon(
                iconSrc: "assets/icons/facebook.svg",
                // ignore: no-empty-block
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
