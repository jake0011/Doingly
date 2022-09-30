import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:Doingly/Screens/homepage/global.dart';
import 'package:Doingly/Screens/homepage/homepage.dart';
import 'package:Doingly/providers/appstateManger.dart';

AppBar buildAppBar(BuildContext context) {
  final icon = CupertinoIcons.moon_stars;

  return AppBar(
    leading: BackButton(onPressed: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyHomePage(title: 'Home', data: {},)),);
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
