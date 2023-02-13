import 'package:flutter/material.dart';
import 'package:madproject/global.dart';
import 'login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  RegExp nameRegex = RegExp(
    r"[a-zA-Z0-9]",
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color mainTheme = Colors.red;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'images/meow.jpg',
              height: size.height * 0.35,
            ),
            Container(
              child: Text('Register your FoodMeow account here',
                  style: TextStyle(
                    fontSize: 20,
                  )),
            ),
            SizedBox(height: 50),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 5,
              ),
              width: size.width * 0.5,
              decoration: BoxDecoration(
                color: Colors.red[100],
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextField(
                textInputAction: TextInputAction.done,
                controller: nameController,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.account_box_outlined,
                    color: mainTheme,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey[700],
                  ),
                  hintText: 'Username',
                  fillColor: Colors.white,
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              width: size.width * 0.6,
              padding: EdgeInsets.symmetric(
                horizontal: 37.5,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.red[100],
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextField(
                obscureText: true,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock_outline,
                    color: mainTheme,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: mainTheme,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey[700],
                  ),
                  hintText: 'Password',
                  fillColor: Colors.white,
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              width: size.width * 0.6,
              child: RaisedButton(
                onPressed: () {
                  if (!nameRegex.hasMatch(nameController.text)) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Unavailable username"),
                        );
                      },
                    );
                    return;
                  }
                  Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Login()))
                      .then((value) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Account registered."),
                        );
                      },
                    );
                  });
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Login()));
                  setState(() {
                    GlobalVars.myProfile.name = nameController.text;
                    GlobalVars.myProfile.password = passwordController.text;
                  });
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Registration Success. Please re-login"),
                      );
                    },
                  );
                },
                padding: EdgeInsets.all(15),
                color: Colors.red[200],
                child: Text(
                  'Confirm Registration & Log in',
                  style: TextStyle(
                    color: mainTheme,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                color: Colors.red[300],
                child: Text(
                  'Have an account already?',
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
