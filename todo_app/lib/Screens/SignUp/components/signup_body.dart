
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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


    Future getUserData()async {
  try {
    // = await Dio().get('https://jsonplaceholder.typicode.com/posts/1', data:{'username': 'kofi','password': "ama"});
    var response 
    = await Dio().get('https://jsonplaceholder.typicode.com/posts/1');
    print(response.data);
  } catch (e) {
    print(e);
  }

  
}
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
           Padding(
            padding:  const EdgeInsets.symmetric(vertical: 30),
            child: Text("SIGN UP!",
      style: GoogleFonts.lora(textStyle: const TextStyle(fontWeight: FontWeight.bold, 
      fontSize: 18
      ),
      )
      ),
          ),
        RoundedInputField(hintText: "First Name:",
         onChanged: (value) {}),

        RoundedInputField(hintText: "Last Name:",
         onChanged: (value) {}),

        RoundedInputField(hintText: "Username:",
         onChanged: (value) {}),

         RoundedPasswordField(onChanged: (value) {}),

         Padding(
           padding: const EdgeInsets.symmetric(vertical: 0.5),
           child: RoundedButton(text: "SIGN UP",
            onPressed: 
            (){
              getUserData();
            }
            // () {Navigator.pushReplacement(
            // context,
            // MaterialPageRoute(builder: (context) => const MyHomePage(title: '',)),);}
            ),
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


