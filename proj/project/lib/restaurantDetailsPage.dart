import 'package:flutter/material.dart';
import 'package:madproject/restaurantInformation.dart';

class RestaurantDetailsPage extends StatelessWidget {
  final RestaurantInfo restaurantinfo;

  const RestaurantDetailsPage({
    Key key,
    this.restaurantinfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(restaurantinfo.name),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15),
            child: Image.asset(
              restaurantinfo.image,
              width: double.infinity,
              height: 250,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              restaurantinfo.text,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              restaurantinfo.quality,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
