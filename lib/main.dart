//--no-sound-null-safety
import 'dart:async';
import 'package:bmi_calculator/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bmi_calculator/pages/result.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          builder: (context, widget) => ResponsiveWrapper.builder(
              BouncingScrollWrapper.builder(context, widget!),
              maxWidth: 1200,
              minWidth: 450,
              defaultScale: true,
              breakpoints: [
                ResponsiveBreakpoint.resize(450, name: MOBILE),
                ResponsiveBreakpoint.autoScale(800, name: TABLET),
                ResponsiveBreakpoint.autoScale(1000, name: TABLET),
                ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
                ResponsiveBreakpoint.autoScale(2460, name: "4K"),
              ]),
          debugShowCheckedModeBanner: false,
          home: splash_screen(),
        );
      },
    );
  }
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
