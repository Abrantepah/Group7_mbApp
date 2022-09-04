import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DeviceList extends StatelessWidget {
  final String devName;
  final String devLocation;
  final String rating;
  final String back_g;
  const DeviceList(
      {Key? key,
      required this.devName,
      required this.devLocation,
      required this.rating,
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
              Text(devName,
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
                  Text(devLocation),
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
