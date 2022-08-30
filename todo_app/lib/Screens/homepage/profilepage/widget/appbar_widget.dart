import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/Screens/homepage/global.dart';
import 'package:todo_app/Screens/homepage/homepage.dart';
import 'package:todo_app/Screens/homepage/profilepage/page/profile_page.dart';
import 'package:todo_app/providers/appstateManger.dart';

AppBar buildAppBar(BuildContext context) {
  final icon = CupertinoIcons.moon_stars;

  return AppBar(
    leading: BackButton(onPressed: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyHomePage(title: 'Home')));
    }),
    backgroundColor: listColor,
    elevation: 0,
    actions: [
      Consumer<AppStateManager>(builder: (context, appStateManager, _) {
        return IconButton(
          icon: Icon(icon),
          onPressed: () {
            appStateManager.changeTheme();
          },
        );
      }),
    ],
  );
}
