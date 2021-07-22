import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF130726),
        appBar: AppBar(
          backgroundColor: Color(0xFF130726),
          elevation: 0.0,
          centerTitle: true,
          title: Text("BMI Calculator"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male_rounded,
                            size: 100.0,
                            color: Colors.white,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "MALE",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xFF1D1E3),
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female_rounded,
                            size: 100.0,
                            color: Colors.white,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "FEMALE",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xFF1D1E3),
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Color(0xFF1D1E3),
                    borderRadius: BorderRadius.circular(10.0)),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          color: Color(0xFF1D1E3),
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          color: Color(0xFF1D1E3),
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
