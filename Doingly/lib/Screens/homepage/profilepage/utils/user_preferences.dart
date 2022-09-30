// ignore_for_file: unnecessary_string_escapes

import 'package:Doingly/Screens/homepage/profilepage/model/user.dart';
import "package:Doingly/Screens/Login/components/loginbody.dart";

class UserPreferences {
  static const myUser = User(
    imagePath: 'assets/images/leetcoders.png',
    name: "personName",
    email: "personUserName",
    about:
        'A group of 9 computer engineering students working on a software engineering project. A basic TodoApp because it is the most important to students',
    isDarkMode: false,
  );
}