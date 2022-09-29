import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Doingly/Screens/Login/login_screen.dart';
import 'package:Doingly/Screens/SignUp/signup_screen.dart';
import 'package:Doingly/Screens/Welcome/components/background.dart';
import 'package:Doingly/component/rounded_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: newline-before-return
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'WELCOME TO DOINGLY',
              style: GoogleFonts.lora(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Image.asset(
              'assets/images/welcomeapge.png',
              height: size.height * 0.3,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                " Doingly helps you stay organised \n "
                "and perform you tasks more faster\n"
                " and efficient.",
                style:
                    TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
              ),
            ),
            RoundedButton(
              text: "LOGIN",
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
                ;
              },
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            RoundedButton(
              text: "SIGN UP",
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                );
                ;
              },
            ),
          ],
        ),
      ),
    );
  }
}
