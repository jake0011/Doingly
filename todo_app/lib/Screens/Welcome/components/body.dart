import 'package:flutter/material.dart';
import 'package:todo_app/Screens/Login/login_screen.dart';
import 'package:todo_app/Screens/SignUp/signup_screen.dart';
import 'package:todo_app/Screens/Welcome/components/background.dart';
import 'package:todo_app/component/rounded_button.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery
        .of(context)
        .size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('WELCOME TO DOINGLY',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                ),
          ),
          SizedBox(height: size.height*0.01,),
              Image.asset('assets/images/welcomeapge.png', height: size.height*0.3,),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(" Doingly helps you stay organised \n "
                "and perform you tasks more faster\n"
                " and efficient.",
                style:TextStyle(fontStyle: FontStyle.italic,)
                ),
              ),
              RoundedButton(
                text: "LOGIN",
                onPressed: () { Navigator.pushReplacement(
context,MaterialPageRoute(builder: (context) => LoginScreen()),);;},
                ),
           SizedBox(height: size.height*0.01,),
              RoundedButton(
                text: "SIGN UP",
                onPressed: () {
                  Navigator.pushReplacement(
context,MaterialPageRoute(builder: (context) => SignUpScreen()),);;
                },
                ),
        ]
        ),
      ),
      );
  }
}

