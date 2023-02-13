import 'package:flutter/material.dart';
import 'aboutUs.dart';
import 'profile.dart';
import 'login.dart';
import 'HomePage.dart';
import 'restaurants.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/catpfp.jpg'),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Meower',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(7.5, 0, 0, 0),
              child: ListTile(
                title: Text(
                  'Home',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                ),
                trailing: Icon(Icons.house),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
            ),
            Divider(
              thickness: 5,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(7.5, 0, 0, 0),
              child: ListTile(
                title: Text(
                  'Your Profile',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                ),
                trailing: Icon(Icons.person),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
              ),
            ),
            Divider(
              thickness: 5,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(7.5, 0, 0, 0),
              child: ListTile(
                title: Text(
                  'About Us',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                ),
                trailing: Icon(Icons.mouse),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => AboutUs()));
                },
              ),
            ),
            Divider(
              thickness: 5,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(7.5, 0, 0, 0),
              child: ListTile(
                title: Text(
                  'Restaurants',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                ),
                trailing: Icon(Icons.restaurant),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Restaurant()));
                },
              ),
            ),
            Divider(
              thickness: 5,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(7.5, 180, 0, 0),
              child: ListTile(
                title: Text(
                  'Logout',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                ),
                trailing: Icon(Icons.logout),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
