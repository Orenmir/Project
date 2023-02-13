import 'package:flutter/material.dart';
import 'package:madproject/login.dart';
import 'global.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp() {
    UserProfile thisProfile = UserProfile('qijun', 'qijun123');
    GlobalVars.myProfile = thisProfile;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        dividerColor: Colors.black,
      ),
      home: Login(),
    );
  }
}
