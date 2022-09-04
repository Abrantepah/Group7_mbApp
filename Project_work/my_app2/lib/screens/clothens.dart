import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_app2/Widgets/clothenList.dart';
import 'package:my_app2/screens/individualPagesClothen/clothen1.dart';
import 'package:my_app2/screens/individualPagesClothen/clothen3.dart';
import 'package:my_app2/screens/individualPagesClothen/clothen4.dart';
import 'package:my_app2/screens/individualPagesClothen/clothen5.dart';

import 'individualPagesClothen/clothen2.dart';
import 'mainPage.dart';

class Clothens extends StatefulWidget {
  const Clothens({Key? key}) : super(key: key);

  @override
  State<Clothens> createState() => _ClothensState();
}

class _ClothensState extends State<Clothens> {
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
                          color: Colors.black,
                          blurRadius: 2,
                          offset: Offset(2, 2)),
                    ],
                    color: Colors.blueGrey,
                  ),
                  child: Center(
                      child: Text(
                    "CLOTHENS",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
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
                      MaterialPageRoute(builder: (context) => Clothen1())),
                  child: clothenList(
                      clothenName: "Jalex Boutique",
                      rating: "4.0",
                      clothenLocation: "Ayeduase",
                      back_g: "lib/screens/images/IMG-20220820-WA0056.jpg"),
                ),
                Divider(),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Clothen2())),
                  child: clothenList(
                      clothenName: "Glorious wares",
                      rating: "4.2",
                      clothenLocation: "Ayeduase",
                      back_g: "lib/screens/images/IMG-20220820-WA0040.jpg"),
                ),
                Divider(),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Clothen3())),
                  child: clothenList(
                      clothenName: "Great Gift Boutique",
                      rating: "4.0",
                      clothenLocation: "Ayeduase-central",
                      back_g: "lib/screens/images/IMG-20220820-WA0062.jpg"),
                ),
                Divider(),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Clothen4())),
                  child: clothenList(
                      clothenName: "JiJi wares",
                      rating: "3.7",
                      clothenLocation: "Tech Junction",
                      back_g: "lib/screens/images/IMG-20220820-WA0037.jpg"),
                ),
                Divider(),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Clothen5())),
                  child: clothenList(
                      clothenName: "Prince is evil Boutique",
                      rating: "3.9",
                      clothenLocation: "Kotei",
                      back_g: "lib/screens/images/IMG-20220820-WA0053.jpg"),
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
