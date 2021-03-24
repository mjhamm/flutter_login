import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login/custom_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool _isLoggedIn = false;

  void _loggingIn() {
    new Timer(Duration(seconds: 2), () {
      setState(() {
        _isLoggedIn = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: CustomColors.middleBluePurple
      ),
          child: SafeArea(
            child: Scaffold(
          body: Container(
            color: CustomColors.middleBluePurple,
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: Image.asset('assets/images/flutter_image.png'),
                ),
                SizedBox(
                  height: 80
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)
                    ),
                    width: double.infinity,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email Address',
                          hintStyle: TextStyle(color: CustomColors.jet)
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, bottom: 24.0, left: 16.0, right: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)
                    ),
                    width: double.infinity,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: TextStyle(color: CustomColors.jet)
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: CustomColors.slateBlue
                      ),
                      onPressed: () {
                        _loggingIn();
                      },
                      child: _isLoggedIn ? Text('Logged In') : Text('Log In')
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}