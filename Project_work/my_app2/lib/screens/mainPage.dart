import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_app2/Widgets/categories.dart';
import 'package:my_app2/Widgets/listView.dart';
import 'package:my_app2/screens/clothens.dart';
import 'package:my_app2/screens/footware.dart';
import 'package:my_app2/screens/hostels.dart';
import 'package:my_app2/screens/restaurants.dart';
import 'package:my_app2/screens/sign_in.dart';
import 'package:my_app2/screens/sign_up.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello,",
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Luka Micheal",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Expanded(child: Container()),
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "How can we help you?",
                          hintStyle: TextStyle(color: Colors.black12),
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.search_rounded))),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Hostels())),
                        child: Categories(
                            categoryName: "Hostels",
                            myIcon: 'lib/screens/images/IMG_8477.PNG'),
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Clothens())),
                        child: Categories(
                          categoryName: 'Clothen',
                          myIcon: 'lib/screens/images/IMG_8478.PNG',
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Restaurants())),
                        child: Categories(
                            categoryName: 'Restaurants',
                            myIcon: 'lib/screens/images/IMG_8480.WEBP'),
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Footware())),
                        child: Categories(
                            categoryName: 'Devices',
                            myIcon: 'lib/screens/images/IMG_8482.PNG'),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 5, top: 10),
                  child: Row(
                    children: [
                      Text("All",
                          style: TextStyle(color: Colors.grey, fontSize: 15)),
                      Expanded(child: Container()),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                            color: Colors.grey,
                          ))
                    ],
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      List(
                        itemName: 'Nana-Boro Restaurant',
                        icon: Icon(Icons.person),
                        rating: '4.2',
                        background:
                            'lib/screens/images/IMG-20220820-WA0083.jpg',
                      ),
                      Divider(),
                      List(
                        itemName: 'Amanda Hostel',
                        icon: Icon(Icons.person),
                        rating: '4.2',
                        background:
                            'lib/screens/images/IMG-20220820-WA0025.jpg',
                      ),
                      Divider(),
                      List(
                          itemName: 'Bruce Hawk Enterprice',
                          icon: Icon(Icons.person),
                          rating: '4.0',
                          background:
                              'lib/screens/images/IMG-20220820-WA0063.jpg'),
                      Divider(),
                      List(
                          itemName: 'Glorious wares',
                          icon: Icon(Icons.person),
                          rating: '4.1',
                          background:
                              'lib/screens/images/IMG-20220820-WA0040.jpg')
                    ],
                  ),
                ))
              ],
            )));
  }
}
