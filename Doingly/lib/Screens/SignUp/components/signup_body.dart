import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Doingly/Screens/Login/login_screen.dart';
import 'package:Doingly/Screens/homepage/homepage.dart';
import 'package:Doingly/component/already_have_an_account.dart';
import 'package:Doingly/component/rounded_button.dart';
import 'package:Doingly/component/rounded_input_field.dart';
import 'package:Doingly/component/rounded_password_field.dart';

import '../../Login/components/background.dart';
import '../../Login/components/ordivider.dart';
import '../../Login/components/ordivider_screen.dart';

class Body extends StatelessWidget {
  final Widget child;

  Body({
    Key? key,
    required this.child,
  }) : super(key: key);

  final TextEditingController usernameTEC = TextEditingController();
  final TextEditingController fullnameTEC = TextEditingController();
  final TextEditingController passwordnameTEC = TextEditingController();

  Future getUserData() async {
    try {
      // Send a POST request to the server with user data
      var response = await Dio().post('https://doingly.herokuapp.com/signup', data: {
        'username': usernameTEC.text,
        'fullname': fullnameTEC.text,
        'password': passwordnameTEC.text
      });
      print(response.data.toString());
    } catch (e) {
      print(e);
    }
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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

          // Input field for full name
          RoundedInputField(
            controller: fullnameTEC,
            hintText: "Full Name:",
            onChanged: (value) {},
          ),

          // Input field for username
          RoundedInputField(
            controller: usernameTEC,
            hintText: "Username:",
            onChanged: (value) {},
          ),

          // Input field for password
          RoundedPasswordField(
            passController: passwordnameTEC,
            onChanged: (value) {},
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.5),
            child: RoundedButton(
              text: "SIGN UP",
              onPressed: () async {
                print('login started');
                try {
                  var response = await Dio().post('https://doingly.herokuapp.com/signup', data: {
                    'username': usernameTEC.text,
                    'fullname': fullnameTEC.text,
                    'password': passwordnameTEC.text
                  });
                  print(response.data.toString());
                  if (response.data['message'] == 'Success') {
                    var snackBar = SnackBar(content: Text('Sign up successful'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  }
                } catch (e) {
                  print(e);
                }
              },
            ),
          ),

          // Already have an account? Login instead
          AlreadyHaveAnAccountCheck(
            login: false,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
          ),

          // Divider
          Ordivider(),

          // Social icons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocialIcon(
                iconSrc: "assets/icons/twitter.svg",
                onPressed: () {},
              ),
              SocialIcon(
                iconSrc: "assets/icons/chat.svg",
                onPressed: () {},
              ),
              SocialIcon(
                iconSrc: "assets/icons/google-plus.svg",
                onPressed: () {},
              ),
              SocialIcon(
                iconSrc: "assets/icons/facebook.svg",
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
