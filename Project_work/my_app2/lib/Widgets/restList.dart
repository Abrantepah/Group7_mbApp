import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ResList extends StatelessWidget {
  final String resName;
  final String rating;
  final String resLocation;
  final String back_g;
  const ResList(
      {Key? key,
      required this.resName,
      required this.rating,
      required this.resLocation,
      required this.back_g})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.yellow,
            image: DecorationImage(
              image: AssetImage(back_g),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(resName,
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow[800],
                  ),
                  Text(rating),
                  SizedBox(width: 10),
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.yellow[800],
                  ),
                  Text(resLocation),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite, color: Colors.yellow[800]))
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
