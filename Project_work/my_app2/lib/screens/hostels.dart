import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_app2/Widgets/hostelList.dart';
import 'IndividualPagesHostel/hostel1.dart';
import 'IndividualPagesHostel/hostel2.dart';
import 'IndividualPagesHostel/hostel3.dart';
import 'IndividualPagesHostel/hostel4.dart';
import 'IndividualPagesHostel/hostel5.dart';
import 'mainPage.dart';

class Hostels extends StatefulWidget {
  const Hostels({Key? key}) : super(key: key);

  @override
  State<Hostels> createState() => _HostelsState();
}

class _HostelsState extends State<Hostels> {
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
                    color: Colors.blue,
                  ),
                  child: Center(
                      child: Text(
                    "HOSTELS",
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
                      MaterialPageRoute(builder: (context) => Hostel1())),
                  child: HostelList(
                      hostelName: "Amanda Hostel",
                      rating: "3.5",
                      hostelLocation: "Ayeduase",
                      back_g: "lib/screens/images/IMG-20220820-WA0025.jpg"),
                ),
                Divider(),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Hostel2())),
                  child: HostelList(
                      hostelName: "Jack Jack Hostel",
                      rating: "4.0",
                      hostelLocation: "Boadi",
                      back_g: "lib/screens/images/IMG-20220820-WA0026.jpg"),
                ),
                Divider(),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Hostel3())),
                  child: HostelList(
                      hostelName: "Rizen Hostel Annex",
                      rating: "4.3",
                      hostelLocation: "KentinKrono-West",
                      back_g: "lib/screens/images/IMG-20220820-WA0032.jpg"),
                ),
                Divider(),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Hostel4())),
                  child: HostelList(
                      hostelName: "Boadi-Executive Hostel",
                      rating: "3.6",
                      hostelLocation: "Boadi",
                      back_g: "lib/screens/images/IMG-20220820-WA0023.jpg"),
                ),
                Divider(),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Hostel5())),
                  child: HostelList(
                      hostelName: "Jack Jack Hostel",
                      rating: "4.0",
                      hostelLocation: "Boadi",
                      back_g: "lib/screens/images/IMG-20220820-WA0030.jpg"),
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
