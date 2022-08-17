
import 'package:flutter/material.dart';
import 'package:todo_app/Screens/Login/login_screen.dart';
import 'package:todo_app/component/already_have_an_account.dart';
import 'package:todo_app/component/rounded_button.dart';
import 'package:todo_app/component/rounded_input_field.dart';
import 'package:todo_app/component/rounded_password_field.dart';
import '../../Login/components/background.dart';
import '../../Login/components/ordivider.dart';
import '../../Login/components/ordivider_screen.dart';


class Body extends StatelessWidget {
  final Widget child;
  const Body({
    Key? key,
    required this.child,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          const Padding(
            padding:  EdgeInsets.symmetric(vertical: 50),
            child: Text("WELCOME TO DOINGLY",
      style: TextStyle(fontWeight: FontWeight.bold, 
      ),
      ),
          ),
        // Image.asset("assets/images/frontlogo.png",
        // height: size.height*0.15,
        // ),
        RoundedInputField(hintText: "First Name:",
         onChanged: (value) {}),

        RoundedInputField(hintText: "Last Name:",
         onChanged: (value) {}),

        RoundedInputField(hintText: "Username:",
         onChanged: (value) {}),

         RoundedPasswordField(onChanged: (value) {}),

         Padding(
           padding: const EdgeInsets.symmetric(vertical: 4),
           child: RoundedButton(text: "SIGN UP",
            onPressed: () {Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),);}),
         ),

         AlreadyHaveAnAccountCheck(
          login: false,
          onPressed: 
          (){ Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder:
           (context) => const LoginScreen()),);}
        ),
        Ordivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
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
              )
            ],
          )
        ],
        ),
        );
  }
}

