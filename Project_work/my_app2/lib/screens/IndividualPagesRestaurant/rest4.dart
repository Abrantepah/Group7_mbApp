import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Rest4 extends StatelessWidget {
  const Rest4({Key? key}) : super(key: key);

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
                image: AssetImage("lib/screens/images/IMG-20220820-WA0083.jpg"),
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
              color: Colors.lime[400],
            ),
            child: Column(
              children: [
                Text(
                  "Burger -Inn",
                  style: TextStyle(
                      color: Colors.black,
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
                  "DISHES AVAILABLE",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Icon(Icons.food_bank, color: Colors.lime[400]),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.done_all_outlined,
                      color: Colors.lime[400],
                      size: 10,
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Text("Jollof rice with chicken(Sausage , egg)"),
                        Text("[Gh 20 - 50]")
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.done_all_outlined,
                      color: Colors.lime[400],
                      size: 10,
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Text("Fried-rice with chicken(Sausage , egg)"),
                        Text("[Gh 15 - 30]")
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.done_all_outlined,
                      color: Colors.lime[400],
                      size: 10,
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Text("Banku with pepper(Okro , groundnut soap)"),
                        Text("[Gh 20 - 50]")
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.lime[400],
                ),
                Text(
                  "Boadi - New junction",
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
                                "lib/screens/images/IMG-20220820-WA0078.jpg"),
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
                                "lib/screens/images/IMG-20220820-WA0083.jpg"),
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
                                "lib/screens/images/Screenshot (137).png"),
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
                          color: Colors.lime[400],
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Center(
                          child: Text("Call",
                              style: TextStyle(color: Colors.black))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lime[400],
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Center(
                        child: Text(
                          "Message",
                          style: TextStyle(color: Colors.black),
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
