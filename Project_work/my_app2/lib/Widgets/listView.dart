import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class List extends StatelessWidget {
  final String itemName;
  final String rating;
  final Icon icon;
  final String background;
  const List(
      {Key? key,
      required this.itemName,
      required this.icon,
      required this.rating,
      required this.background})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: 350,
            padding:
                const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                image: AssetImage(background),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Text(
                  itemName,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(3),
          height: 25,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.blue[400],
          ),
          child: Column(
            children: [
              Row(children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[800],
                  size: 15,
                ),
                Text(rating)
              ]),
            ],
          ),
        )
      ],
    );
  }
}
