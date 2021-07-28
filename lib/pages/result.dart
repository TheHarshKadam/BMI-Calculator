import 'package:bmi_calculator/common/icon_widget.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF130726),
      appBar: AppBar(
         backgroundColor: Color(0xFF130726),
         elevation: 0.0,
          centerTitle: true,
          title: Text(
           "BMI Calculator",
           style: TextStyle(
            color: Colors.white,
            )
          ),
      ),
    );
  }
}
