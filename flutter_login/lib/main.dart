import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login/custom_colors.dart';
import 'package:flutter_login/custom_page_route.dart';
import 'package:flutter_login/forgot_password.dart';
import 'package:flutter_login/sign_up_page.dart';
import 'package:flutter_login/welcome_page.dart';

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

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {

  int _animatedId = 0;

  Widget _renderWidget(Function onPress) {
    return _animatedId == 0 ? LoginButton(pressFunction: onPress, buttonText: 'Log In',) : Container(color: CustomColors.middleBluePurple, height: 40,); //CustomProgress();
  }

  void _updateWidget() {
    setState(() {
      _animatedId = _animatedId == 0 ? 1 : 0;
      //Sign in code()
      //if successful ->
      Timer(Duration(seconds: 1), () {
        Navigator.of(context).push(CustomPageRoute(WelcomePage(), 1000));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: CustomColors.middleBluePurple
      ),
      child: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            backgroundColor: CustomColors.middleBluePurple,
            body: Container(
              color: CustomColors.middleBluePurple,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                      child: Image.asset('assets/images/flutter_image.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        child: Center(child: Text('Welcome Back!', style: TextStyle(color: CustomColors.jet, fontSize: 36, fontWeight: FontWeight.w700),)),
                      ),
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
                    AnimatedSwitcher(
                      duration: const Duration(seconds: 1),
                      child: _renderWidget(_updateWidget),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 24.0, right: 16.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgotPassword()));
                          },
                          child: Text('Forgot Password?', style: TextStyle(color: CustomColors.jet, fontSize: 16),)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 24.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Text(
                            'Don\'t have an account yet?', style: TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              //Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpPage()));
                              Navigator.of(context).push(CustomPageRoute(SignUpPage(), 500));
                            },
                            child: Text(
                              'Sign Up', style: TextStyle(color: CustomColors.jet ,fontSize: 16),
                            )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {

  final VoidCallback pressFunction;
  final String buttonText;

  const LoginButton({Key key, this.pressFunction, this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: 40,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: CustomColors.slateBlue
          ),
          onPressed: pressFunction,
          child: Text(buttonText)
        ),
      ),
    );
  }
}

class CustomProgress extends StatelessWidget {
  const CustomProgress({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(CustomColors.electricBlue),
    );
  }
}