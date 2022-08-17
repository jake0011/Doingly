import 'package:flutter/material.dart';
import 'package:todo_app/Screens/SignUp/signup_screen.dart';
import '../../../component/already_have_an_account.dart';
import '../../../component/rounded_button.dart';
import '../../../component/rounded_input_field.dart';
import '../../../component/rounded_password_field.dart';
import '../../Welcome/components/background.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return Background(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        const Text(
        "LOGIN",
        style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
        ),
        SizedBox(height: size.height*0.01,),
        Image.asset('assets/images/todolist.png', height: size.height*0.25,),
        SizedBox(height: size.height*0.01,),
        RoundedInputField(
          hintText:"Username:",
          onChanged: (value) {},
          ),
          RoundedPasswordField(onChanged: (value) {},
          ),

           SizedBox(height: size.height*0.01,),
              RoundedButton(
                text: "LOGIN",
                onPressed: () {Navigator.pushReplacement(
context,MaterialPageRoute(builder: (context) => const LoginBody()),);},
                ),
                SizedBox(height: size.height*0.01,),
                AlreadyHaveAnAccountCheck(
                  onPressed: () {
                    Navigator.pushReplacement(
context,MaterialPageRoute(builder: (context) => SignUpScreen()),);;
                  },
                ),
      ],
    ),
    );
  }
}

