import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_app2/Widgets/restList.dart';
import 'package:my_app2/screens/IndividualPagesRestaurant/rest1.dart';
import 'package:my_app2/screens/IndividualPagesRestaurant/rest2.dart';
import 'package:my_app2/screens/IndividualPagesRestaurant/rest3.dart';
import 'package:my_app2/screens/IndividualPagesRestaurant/rest4.dart';
import 'package:my_app2/screens/IndividualPagesRestaurant/rest5.dart';

import 'mainPage.dart';

class Restaurants extends StatefulWidget {
  const Restaurants({Key? key}) : super(key: key);

  @override
  State<Restaurants> createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            height: 50,
            color: Colors.transparent,
            child: Row(
              children: [
                IconButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainPage())),
                    icon: Icon(Icons.arrow_back_ios_new_rounded)),
                Expanded(child: Container()),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black54,
                          blurRadius: 2,
                          offset: Offset(2, 2)),
                    ],
                    color: Colors.yellow,
                  ),
                  child: Center(
                      child: Text(
                    "RESTAURANTS",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
                ),
                Expanded(child: Container()),
                IconButton(onPressed: () {}, icon: Icon(Icons.search))
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Rest1())),
                  child: ResList(
                      resName: "Belz Kitchen",
                      rating: "4.0",
                      resLocation: "Ayeduase",
                      back_g: "lib/screens/images/IMG-20220820-WA0073.jpg"),
                ),
                Divider(),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Rest2())),
                  child: ResList(
                      resName: "Pizza-man",
                      rating: "4.4",
                      resLocation: "Mango road",
                      back_g: "lib/screens/images/IMG-20220820-WA0079.jpg"),
                ),
                Divider(),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Rest3())),
                  child: ResList(
                      resName: "Burger-Inn",
                      rating: "4.1",
                      resLocation: "Boadi",
                      back_g: "lib/screens/images/IMG-20220820-WA0080.jpg"),
                ),
                Divider(),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Rest4())),
                  child: ResList(
                      resName: "Nano-Boro Restaurant",
                      rating: "3.5",
                      resLocation: "Ayeduase",
                      back_g: "lib/screens/images/IMG-20220820-WA0083.jpg"),
                ),
                Divider(),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Rest5())),
                  child: ResList(
                      resName: "Lidya's Kitchen",
                      rating: "3.5",
                      resLocation: "Boadi",
                      back_g: "lib/screens/images/IMG-20220820-WA0081.jpg"),
                ),
                Text("More ...", style: TextStyle(color: Colors.blue))
              ],
            ),
          )
        ],
      ),
    ));
  }
}
