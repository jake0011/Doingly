import 'package:flutter/material.dart';
import 'package:todo_app/Screens/homepage/profilepage/model/user.dart';
import 'package:todo_app/Screens/homepage/profilepage/utils/user_preferences.dart';
import 'package:todo_app/Screens/homepage/profilepage/widget/appbar_widget.dart';
import 'package:todo_app/Screens/homepage/profilepage//widget/button_widget.dart';
import 'package:todo_app/Screens/homepage/profilepage/widget/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
   

    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 30),
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          const SizedBox(height: 30),
          buildName(user),
          const SizedBox(height: 70),
          Center(child: buildAbout(user)),
          const SizedBox(height: 100),
          Center(child: buildUpgradeButton()),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Support Us!',
        onClicked: () {},
      );

  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.about,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}
