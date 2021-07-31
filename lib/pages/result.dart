import 'package:bmi_calculator/common/icon_widget.dart';
import 'package:bmi_calculator/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/common/card_widget.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {this.bmiResult = '', this.finalresult = '', this.conclusion = ''});

  final String bmiResult;
  final String finalresult;
  final String conclusion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF130726),
      appBar: AppBar(
        backgroundColor: Color(0xFF130726),
        elevation: 0.0,
        centerTitle: true,
        title: Text("BMI Calculator",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0.sp,
            )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              "Your Result",
              style: TextStyle(
                fontSize: 45.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: reusable_card(
              colors: activeCardColor,
              customchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        finalresult,
                        style: TextStyle(
                          color: Color(0xFF24D876),
                          fontSize: 20.0.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      bmiResult,
                      style: TextStyle(
                          fontSize: 100.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        conclusion,
                        style: TextStyle(
                          fontSize: 20.0.sp,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Feedback.forTap(context);
              Clipboard.setData(ClipboardData());
              HapticFeedback.lightImpact();
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text("RE-CALCULATE!",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold)),
              ),
              margin: EdgeInsets.only(top: 10.0),
              height: 80.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xFFEE4266),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(18.0))),
            ),
          )
        ],
      ),
    );
  }
}
