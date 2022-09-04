import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('lib/screens/images/Screenshot (143).png'),
        fit: BoxFit.cover,
      )),
    );
  }
}
