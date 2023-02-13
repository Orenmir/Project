import 'package:flutter/material.dart';
import 'package:madproject/profile_widget.dart';
import 'package:madproject/user_preferences.dart';
import 'user.dart';
import 'profile_widget.dart';
import 'button_widget.dart';
import 'appbar_widget.dart';
import 'textfield_widget.dart';
import 'profile.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  User user = UserPreferences.myUser;

  @override
  void initState() {
    super.initState();
    UserPreferences.init();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          physics: BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              imagePath: user.imagePath,
              isEdit: true,
              onClicked: () async {},
            ),
            const SizedBox(height: 20),
            TextFieldWidget(
              label: 'Name',
              text: user.name,
              onChanged: (name) => user = user.copy(name: name),
            ),
            const SizedBox(height: 20),
            TextFieldWidget(
              label: 'Email',
              text: user.email,
              onChanged: (email) => user = user.copy(email: email),
            ),
            const SizedBox(height: 20),
            TextFieldWidget(
              label: 'About',
              text: user.about,
              maxLines: 5,
              onChanged: (about) => user = user.copy(about: about),
            ),
            const SizedBox(height: 20),
            ButtonWidget(
              text: 'Save',
              onClicked: () {
                UserPreferences.setUser(user);
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => Profile(),
                ));
              },
            ),
          ],
        ),
      );
}
