import 'package:flutter/material.dart';
import 'package:madproject/sidedrawer.dart';
import 'package:madproject/food_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color mainTheme = Colors.red;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: mainTheme,
      ),
      drawer: SideDrawer(),
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Text(
              'Frequently Ordered From',
              style: TextStyle(
                fontSize: 27.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'around your area',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Fast Food',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Image.asset(
                  'images/mcdonald.png',
                  width: 70,
                  height: 70,
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: FastFoodInfo1(),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Image.asset(
                  'images/ajisen.png',
                  width: 58,
                  height: 58,
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: FastFoodInfo2(),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Image.asset(
                  'images/mosburger.png',
                  width: 70,
                  height: 70,
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: FastFoodInfo3(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Coffee Shops',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 15),
            CoffeeShopFoodInfo1(),
          ],
        ),
      ),
    );
  }
}
