import 'package:flutter/material.dart';
import 'package:madproject/sideDrawer.dart';
import 'package:madproject/restaurantInformation.dart';
import 'package:madproject/restaurantDetailsPage.dart';

class Restaurant extends StatefulWidget {
  const Restaurant({Key key}) : super(key: key);

  @override
  _RestaurantState createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  final controller = TextEditingController();
  List<RestaurantInfo> restaurantinfo2 = allRestaurantInfo;
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: SideDrawer(),
        appBar: AppBar(
          title: const Text('View available Restaurants'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                  itemCount: restaurantinfo2.length,
                  itemBuilder: (context, index) {
                    final restaurantinfo = restaurantinfo2[index];
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                        leading: Image.asset(
                          restaurantinfo.image,
                          width: 50,
                          height: 50,
                        ),
                        title: Text(restaurantinfo.name),
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RestaurantDetailsPage(
                                restaurantinfo: restaurantinfo),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      );
  Color mainTheme = Colors.red;
}
