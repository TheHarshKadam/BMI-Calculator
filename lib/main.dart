//--no-sound-null-safety
import 'dart:async';

import 'package:bmi_calculator/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bmi_calculator/pages/result.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splash_screen(),
  ));
}

class splash_screen extends StatefulWidget {
  @override
  _splash_screenState createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => home())));
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF130726),
    ));
    return Container(
        color: Color(0xFF130726),
        child: Center(
            child: Image(
          image: AssetImage(
            'assets/bmi_icon.png',
          ),
          width: 150.0,
          height: 150.0,
        )));
  }
}
