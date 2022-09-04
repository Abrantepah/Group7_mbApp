import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_app2/Widgets/background.dart';
import 'package:my_app2/screens/sign_in.dart';
import 'mainPage.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _secureText = true;
  bool _secure = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        Container(
          margin: EdgeInsets.only(top: 150),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Colors.white),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: ListView(
              children: [
                Row(
                  children: [
                    Expanded(child: Container()),
                    Text(
                      "Tell us about yourself.",
                      style: TextStyle(color: Colors.blueGrey, fontSize: 20),
                    ),
                    Expanded(child: Container())
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "User Email",
                            hintStyle: TextStyle(color: Colors.lightGreen),
                            border: UnderlineInputBorder(),
                            suffixIcon: IconButton(
                                onPressed: () {}, icon: Icon(Icons.mail))),
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "User name",
                            hintStyle: TextStyle(color: Colors.lightGreen),
                            border: UnderlineInputBorder(),
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.person_pin))),
                        keyboardType: TextInputType.text,
                        obscureText: false,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.lightGreen),
                            border: UnderlineInputBorder(),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _secureText = !_secureText;
                                  });
                                },
                                icon: Icon(_secureText
                                    ? Icons.lock_outline_sharp
                                    : Icons.lock_open_sharp))),
                        keyboardType: TextInputType.text,
                        obscureText: _secureText,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Re-enter password",
                            hintStyle: TextStyle(color: Colors.lightGreen),
                            border: UnderlineInputBorder(),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _secure = !_secure;
                                  });
                                },
                                icon: Icon(_secure
                                    ? Icons.lock_outline_sharp
                                    : Icons.lock_open_sharp))),
                        keyboardType: TextInputType.text,
                        obscureText: _secure,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.lightGreen),
                      child: Center(
                          child: InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainPage())),
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                    ),
                    Expanded(child: Container())
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(child: Container()),
                    InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp())),
                      child: Text(
                        "SIGN UP  |",
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ),
                    InkWell(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignIn())),
                        child: Text("  SIGN IN",
                            style: TextStyle(color: Colors.blueGrey))),
                    Expanded(child: Container())
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
