import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Categories extends StatelessWidget {
  final String myIcon;
  final String categoryName;
  const Categories({Key? key, required this.myIcon, required this.categoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.blue[200],
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  image: DecorationImage(
                    image: AssetImage(myIcon),
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(width: 10),
            Text(categoryName),
          ],
        ),
      ),
    );
  }
}
