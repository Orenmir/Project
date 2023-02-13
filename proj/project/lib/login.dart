import 'package:flutter/material.dart';
import 'package:madproject/HomePage.dart';
import 'register.dart';
import 'global.dart';

final nameController = TextEditingController();
final passwordController = TextEditingController();
RegExp nameRegex = RegExp(
  r"[a-zA-Z0-9]",
);

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color mainTheme = Colors.red;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'images/meow.jpg',
              height: size.height * 0.3,
            ),
            Container(
              child: Text('Login to FoodMeow',
                  style: TextStyle(
                    fontSize: 35,
                  )),
            ),
            SizedBox(height: 23),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 60,
                vertical: 5,
              ),
              width: size.width * 0.6,
              decoration: BoxDecoration(
                color: Colors.red[100],
                borderRadius: BorderRadius.circular(20),
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
                    fontWeight: FontWeight.bold,
                  ),
                  hintText: 'Username',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 80,
                vertical: 4.5,
              ),
              width: size.width * 0.7,
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                textInputAction: TextInputAction.done,
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock_outline,
                    color: mainTheme,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),
                  hintText: 'Password',
                  fillColor: Colors.white,
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: size.width * 0.25,
              child: RaisedButton(
                onPressed: () {
                  if (nameController.text.isEmpty ||
                      passwordController.text.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Username & Password cannot be empty"),
                        );
                      },
                    );
                  } else if (nameController.text != GlobalVars.myProfile.name) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Wrong username"),
                        );
                      },
                    );
                  } else if (passwordController.text !=
                      GlobalVars.myProfile.password) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Wrong password"),
                        );
                      },
                    );
                  } else if (nameController.text == GlobalVars.myProfile.name &&
                      passwordController.text ==
                          GlobalVars.myProfile.password) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  } else if (nameController.text != GlobalVars.myProfile.name &&
                      passwordController.text !=
                          GlobalVars.myProfile.password) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Ensure your information is correct"),
                        );
                      },
                    );
                  } else if (nameController.text == null) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Please Register first"),
                        );
                      },
                    );
                  }
                },
                padding: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.red[200],
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: mainTheme,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              alignment: Alignment.center,
              child: Text(
                'or Sign Up for a New Account below meow',
                style: TextStyle(
                  color: mainTheme,
                  fontSize: 10,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: size.width * 0.282,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
                padding: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Colors.red[200],
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: mainTheme,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: size.width * 0.282,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                padding: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Colors.red[200],
                child: Text(
                  'Shortcut to home page',
                  style: TextStyle(
                    color: mainTheme,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
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
