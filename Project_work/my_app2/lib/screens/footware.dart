import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_app2/Widgets/deviceList.dart';
import 'package:my_app2/screens/individualPagesDevices/device2.dart';

import 'individualPagesDevices/device1.dart';
import 'individualPagesDevices/device3.dart';
import 'individualPagesDevices/device4.dart';
import 'individualPagesDevices/device5.dart';
import 'mainPage.dart';

class Footware extends StatefulWidget {
  const Footware({Key? key}) : super(key: key);

  @override
  State<Footware> createState() => _FootwareState();
}

class _FootwareState extends State<Footware> {
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
                    color: Colors.orange[400],
                  ),
                  child: Center(
                      child: Text(
                    "FOOTWARES",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
                Expanded(child: Container()),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.favorite_outlined))
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
                      MaterialPageRoute(builder: (context) => Device1())),
                  child: DeviceList(
                      devName: "Jeffery's Accessories",
                      rating: "3.8",
                      devLocation: "Boadi",
                      back_g: "lib/screens/images/IMG-20220820-WA0058.jpg"),
                ),
                Divider(),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Device2())),
                  child: DeviceList(
                      devName: "Chiwawa Enterprice",
                      rating: "4.3",
                      devLocation: "Ayeduasi New site",
                      back_g: "lib/screens/images/IMG-20220820-WA0067.jpg"),
                ),
                Divider(),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Device3())),
                  child: DeviceList(
                      devName: "Bruce Hawk Enterprice",
                      rating: "4.4",
                      devLocation: "Kotei",
                      back_g: "lib/screens/images/IMG-20220820-WA0063.jpg"),
                ),
                Divider(),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Device4())),
                  child: DeviceList(
                      devName: "Nitro 5 Shop",
                      rating: "4.0",
                      devLocation: "Ayeduase",
                      back_g: "lib/screens/images/IMG-20220820-WA0058.jpg"),
                ),
                Divider(),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Device5())),
                  child: DeviceList(
                      devName: "Lisandro Enterprice",
                      rating: "3.0",
                      devLocation: "Ayeduasi gate",
                      back_g: "lib/screens/images/IMG-20220820-WA0059.jpg"),
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
