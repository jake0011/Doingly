import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taskline/Screens/homepage/profilepage/page/profile_page.dart';
import 'package:taskline/models/global.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'User Profile';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: listColor,
        dividerColor: Colors.black,
      ),
      darkTheme: ThemeData.dark(),
      title: title,
      home: ProfilePage(),
    );
  }
}
