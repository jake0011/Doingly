import 'package:Doingly/Screens/homepage/profilepage/model/user.dart';
import "package:Doingly/Screens/Login/components/loginbody.dart";

// UserPreferences class for managing user preferences
class UserPreferences {
  // Define a constant User object with default values
  static const myUser = User(
    imagePath: 'assets/images/leetcoders.png',
    name: "Leetcoders",
    email: "leetcoders@gmaol.com",
    about:
        'A group of 9 computer engineering students working on a software engineering project. A basic TodoApp because it is the most important to students',
    isDarkMode: false,
  );
}
