import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/Screens/SignUp/signup_screen.dart';
import 'package:todo_app/Screens/homepage/homepage.dart';
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
    Future getUserData() async {
      try {
        var response = await Dio().post('https://doingly.herokuapp.com/todo',
            data: {'username': 'kofi', 'password': "ama"});
        print(response.data);
      } catch (e) {
        print(e);
      }
    }

    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "LOGIN",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Image.asset(
            'assets/images/todolist.png',
            height: size.height * 0.25,
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          RoundedInputField(
            hintText: "Username:",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          RoundedButton(
            text: "LOGIN",
            // onPressed: (){
            // //   getUserData();
            // // },
            onPressed: () {
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
          AlreadyHaveAnAccountCheck(
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
    );
  }
}
