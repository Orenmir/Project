import 'package:flutter/material.dart';
import 'sideDrawer.dart';
import 'package:url_launcher/url_launcher.dart';

launchURL() async {
  const url = 'tel: 87803480';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class AboutUs extends StatelessWidget {
  const AboutUs({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color mainTheme = Colors.red;
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('About Us'),
        backgroundColor: mainTheme,
        centerTitle: true,
      ),
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'images/foodpile.jpg',
              height: size.height * 0.4,
            ),
            Center(
              child: Text(
                  'Here at FoodMeow, we strive to be the very best food delivery service, having fast deliveries, giving good deals, and providing the ultimate service to all customers\n FoodMeow is solely developed by Lew Qi Jun, a student currently studying in Nanyang Polytechnic.\n The company is also run alone by him, as the sole developer of the application.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ),
            SizedBox(height: 7.5),
            Container(
              width: size.width * 0.55,
              child: RaisedButton(
                onPressed: () => launchURL(),
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                color: Colors.red[300],
                child: Row(
                  children: <Widget>[
                    Icon(Icons.phone),
                    SizedBox(width: 10),
                    Text(
                      'Give us a call now',
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
