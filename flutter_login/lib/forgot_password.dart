import 'package:flutter/material.dart';
import 'package:flutter_login/custom_colors.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.middleBluePurple,
      appBar: AppBar(
        backgroundColor: CustomColors.middleBluePurple,
        elevation: 0.0,
        centerTitle: true,
        title: Text('Forgot Password'),
      ),
      body: Column(
        children: [
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
        ],
      ),
    );
  }
}