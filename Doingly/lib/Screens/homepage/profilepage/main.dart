import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Doingly/Screens/homepage/profilepage/page/profile_page.dart';
import 'package:get/get.dart';



Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
 


    const MyApp({super.key});
    
     @override
  State<MyApp> createState() =>  _MyAppState();
}

class _MyAppState extends State<MyApp> {
   static final String title = 'User Profile';

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: ProfilePage(),
    );
  }
  
 
}
