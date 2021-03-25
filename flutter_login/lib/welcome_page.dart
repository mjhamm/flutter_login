import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login/custom_colors.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: CustomColors.middleBluePurple
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: CustomColors.middleBluePurple,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                  ),
                  child: Center(
                    child: Text(
                      'Welcome Back', textAlign: TextAlign.center,style: TextStyle(color: CustomColors.jet, fontSize: 24),
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