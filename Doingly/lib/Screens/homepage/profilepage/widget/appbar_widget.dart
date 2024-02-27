import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:Doingly/Screens/homepage/global.dart';
import 'package:Doingly/Screens/homepage/homepage.dart';
import 'package:Doingly/providers/appstateManger.dart';

// Builds the app bar widget for the profile page
AppBar buildAppBar(BuildContext context) {
  final icon = CupertinoIcons.moon_stars;

  return AppBar(
    // Adds a back button to navigate back to the home page
    leading: BackButton(onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MyHomePage(
                  title: 'Home',
                  data: {},
                )),
      );
    }),
    backgroundColor: listColor,
    elevation: 0,
    // Adds an action button to change the theme
    // Commented out for now as it is not implemented
    // actions: [
    //   Consumer<AppStateManager>(builder: (context, appStateManager, _) {
    //     return IconButton(
    //       icon: Icon(icon),
    //       onPressed: () {
    //         appStateManager.changeTheme();
    //       },
    //     );
    //   }),
    // ],
  );
}
