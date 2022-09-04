import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Hostel4 extends StatelessWidget {
  const Hostel4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/screens/images/IMG-20220820-WA0023.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(top: 100),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.blue[400],
            ),
            child: Column(
              children: [
                Text(
                  "Boadi-Executive Hostel",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(top: 150),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Text(
                  "HOSTEL FEES",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(height: 10),
                Text(
                  "3 in one room = GH 3500",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "2 in one room = GH 4000",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "1 in one room = GH 6000",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 10),
                Icon(Icons.event_available, color: Colors.blue),
                Row(
                  children: [
                    Icon(
                      Icons.done_all_outlined,
                      color: Colors.green,
                      size: 10,
                    ),
                    SizedBox(width: 10),
                    Text("12 male bed spaces available for 3 in 1"),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.done_all_outlined,
                      color: Colors.green,
                      size: 10,
                    ),
                    SizedBox(width: 10),
                    Text("4 male bed spaces available for 2 in 1"),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.done_all_outlined,
                      color: Colors.green,
                      size: 10,
                    ),
                    SizedBox(width: 10),
                    Text("No male bed spaces available for 1 in a room"),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.done_all_outlined,
                      color: Colors.green,
                      size: 10,
                    ),
                    SizedBox(width: 10),
                    Text("21 female bed spaces available for 3 in 1"),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.done_all_outlined,
                      color: Colors.green,
                      size: 10,
                    ),
                    SizedBox(width: 10),
                    Text("4 female bed spaces available for 2 in 1"),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.done_all_outlined,
                      color: Colors.green,
                      size: 10,
                    ),
                    SizedBox(width: 10),
                    Text("No female bed spaces available for 1 in a room"),
                  ],
                ),
                SizedBox(height: 10),
                Icon(
                  Icons.location_on,
                  color: Colors.blue,
                ),
                Text(
                  "Boadi - Opposite Old Book shop",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(2),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "lib/screens/images/IMG-20220820-WA0023.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                    Container(
                      margin: const EdgeInsets.all(2),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "lib/screens/images/IMG-20220820-WA0023.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                    Container(
                      margin: const EdgeInsets.all(2),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "lib/screens/images/IMG-20220820-WA0023.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.blue[400],
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Center(
                          child: Text("Call",
                              style: TextStyle(color: Colors.white))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.blue[400],
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Center(
                        child: Text(
                          "Message",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
