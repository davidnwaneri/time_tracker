import 'package:flutter/material.dart';
import 'package:time_tracker_app/component.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
        elevation: 3.0,
      ),
      body: Center(
        child: Container(
          color: Colors.grey[200],
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign in',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 48.0),
              SocialSignInButton(
                buttonLogo: 'images/logo/google-logo.png',
                buttonText: 'Sign in with Google',
                buttonOnPressed: () {},
              ),
              SizedBox(height: 8.0),
              SocialSignInButton(
                buttonLogo: 'images/logo/facebook-logo.png',
                buttonText: 'Sign in with Facebook',
                buttonOnPressed: () {},
                buttonColour: Color(0xFF334d92),
                buttonTextColour: Colors.white,
              ),
              SizedBox(height: 8.0),
              SignInButton(
                buttonText: 'Sign in with Email',
                buttonOnPressed: () {},
                buttonColour: Colors.teal[700],
                buttonTextColour: Colors.white,
              ),
              SizedBox(height: 8.0),
              Text(
                'or',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8.0),
              SignInButton(
                buttonText: 'Go Anonymous',
                buttonOnPressed: () {},
                buttonColour: Colors.lime[300],
                buttonTextColour: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
