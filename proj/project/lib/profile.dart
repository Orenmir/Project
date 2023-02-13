import 'package:flutter/material.dart';
import 'package:madproject/user_preferences.dart';
import 'edit_profile.dart';
import 'sideDrawer.dart';
import 'user.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.getUser();
    Color mainTheme = Colors.red;

    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        centerTitle: true,
        backgroundColor: mainTheme,
      ),
      drawer: SideDrawer(),
      body: ListView(physics: BouncingScrollPhysics(), children: [
        const SizedBox(height: 60),
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => EditProfile()));
          },
          child: Column(
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('images/catpfp.jpg'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Click on the photo to edit profile. \nChanges will be observed when u revisit the page.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        buildName(user),
        const SizedBox(height: 50),
        buildAbout(user),
      ]),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ],
      );

  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'User note',
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
