import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_app2/Widgets/background.dart';
import 'package:my_app2/screens/sign_in.dart';
import 'package:my_app2/screens/sign_up.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                    ),
                    Text(
                      "S H O P T R A C K",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 3, left: 70),
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.limeAccent),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp())),
                              child: Text(
                                "SIGN UP",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios_rounded,
                                size: 10, color: Colors.black)
                          ],
                        )),
                    SizedBox(height: 15),
                    Container(
                        padding: const EdgeInsets.only(top: 3, left: 70),
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.limeAccent),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignIn())),
                              child: Text(
                                "SIGN IN",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios_rounded,
                                size: 10, color: Colors.black)
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
