// ignore_for_file: unnecessary_string_escapes, unused_local_variable

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Doingly/Screens/SignUp/signup_screen.dart';
import '../../../component/already_have_an_account.dart';
import '../../../component/rounded_button.dart';
import '../../../component/rounded_input_field.dart';
import '../../../component/rounded_password_field.dart';
import '../../Welcome/components/background.dart';
import '../../homepage/homepage.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late String username;
    late String password;
    Future getUserData() async {
      try {
        // = await Dio().get('https://jsonplaceholder.typicode.com/posts/1', data:{'username': 'kofi','password': "ama"});

        var response = await Dio().post(
          'https://doingly.herokuapp.com/login',
          data: {'username': "malafaka", 'password': "lol"},
        );
        print(response.data);
      } catch (e) {
        print(e);
      }
    }

    Size size = MediaQuery.of(context).size;
    // ignore: newline-before-return
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: const [
          //     Icon(Icons.arrow_back_outlined),
          //   ],
          // ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "LOGIN",
              style: GoogleFonts.lora(
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Image.asset(
            'assets/images/todolist.png',
            height: size.height * 0.15,
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          RoundedInputField(
            hintText: "Username:",
            onChanged: (value) {
              username = value;
            },
          ),
          RoundedPasswordField(
            onChanged: (value) {
              password = value;
            },
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          RoundedButton(
            text: "LOGIN",
            onPressed: () {
              print("log");
              getUserData();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyHomePage(
                          title: '',
                        )),
              );
            },
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: AlreadyHaveAnAccountCheck(
              onPressed: () {
                getUserData();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                );
                ;
              },
            ),
          ),
        ],
      ),
    );
  }
}
