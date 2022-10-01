import 'package:flutter/material.dart';
import 'package:Doingly/Screens/homepage/profilepage/model/user.dart';
import 'package:Doingly/Screens/homepage/profilepage/utils/user_preferences.dart';
import 'package:Doingly/Screens/homepage/profilepage/widget/appbar_widget.dart';
import 'package:Doingly/Screens/homepage/profilepage//widget/button_widget.dart';
import 'package:Doingly/Screens/homepage/profilepage/widget/profile_widget.dart';
import 'package:url_launcher/url_launcher.dart';

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
            // ignore: no-empty-block
            onClicked: () async {},
          ),
          const SizedBox(height: 10),
          buildName(user),
          const SizedBox(height: 30),
          Center(child: buildAbout(user)),
          const SizedBox(height: 60),
          Center(child: buildSupportButton()),
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
          ),
        ],
      );

  Widget buildSupportButton() => ButtonWidget(
        text: 'Support Us!',
        // ignore: no-empty-block
        onClicked: () {
          _launchUrl();
        },
      );

  Widget buildAbout(User user) => Container(
        // padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text(
              'About',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              user.about,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(
          color: const Color(0xffF4A18A),
          borderRadius: BorderRadius.circular(10),
        ),
      );
}

Future<void> _launchUrl() async {
  final Uri _url = Uri.parse(
      'https://github.com/Leetcoders-Todo-App/Front-End/tree/Staging');
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
