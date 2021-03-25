import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login/custom_colors.dart';

class ForgotPassword extends StatelessWidget {
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
            appBar: AppBar(
              backgroundColor: CustomColors.middleBluePurple,
              elevation: 0.0,
              centerTitle: true,
              title: Text('Forgot Password'),
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 16.0, right: 16.0, bottom: 24.0),
                  child: Text(
                    'Enter the email associated with your account and we\'ll send an email with instructions to reset your password.',
                    style: TextStyle(
                      color: CustomColors.jet,
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                    ),
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
                  padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: CustomColors.slateBlue
                      ),
                      onPressed: () {},
                      child: Text('Send Instructions',)
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