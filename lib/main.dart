import 'package:flutter/material.dart';
import 'package:time_tracker_app/src/sign_in_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TIme Track',
      theme: appThemeData,
      home: SignInPage(),
    );
  }
}

ThemeData appThemeData = ThemeData(
  primarySwatch: Colors.indigo,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all<TextStyle>(
        TextStyle(fontSize: 17.0),
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
      ),
    ),
  ),
);
