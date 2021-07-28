import 'dart:async';

import 'package:bmi_calculator/common/icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/common/card_widget.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

const activeCardColor = Color(0xFF27104b);
const inactiveCardColor = Color(0xFF1f0f38);
const numTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 60.0,
  fontWeight: FontWeight.w900,
);

enum Gender { Male, Female }

class _homeState extends State<home> {
  Gender selectedGender = Gender.Male;
  int height = 200;
  int weight = 30;
  int age = 34;
  bool _isPressed = false;
  bool _loopActive = false;

  void _incfastWeight() async {
    if (_loopActive) {
      return;
    }
    _loopActive = true;

    while (_isPressed) {
      setState(() {
        weight++;
      });
      await Future.delayed(Duration(
        milliseconds: 100,
      ));
    }
    _loopActive = false;
  }

  void _decfastWeight() async {
    if (_loopActive) {
      return;
    }
    _loopActive = true;

    while (_isPressed) {
      setState(() {
        if (weight > 15) {
          weight--;
        }
      });
      await Future.delayed(Duration(
        milliseconds: 100,
      ));
    }
    _loopActive = false;
  }

  void _incfastAge() async {
    if (_loopActive) {
      return;
    }
    _loopActive = true;

    while (_isPressed) {
      setState(() {
        age++;
      });
      await Future.delayed(Duration(
        milliseconds: 100,
      ));
    }
    _loopActive = false;
  }

  void _decfastAge() async {
    if (_loopActive) {
      return;
    }
    _loopActive = true;

    while (_isPressed) {
      setState(() {
        if (age > 1) {
          age--;
        }
      });
      await Future.delayed(Duration(
        milliseconds: 100,
      ));
    }
    _loopActive = false;
  }

  @override
  Widget build(BuildContext context) {
    // print(height);
    // print(age);
    // print(weight);
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
                    child: reusable_card(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.Male;
                        });
                      },
                      colors: selectedGender == Gender.Male
                          ? activeCardColor
                          : inactiveCardColor,
                      customchild: iconWidget(
                        icon: Icons.male_rounded,
                        label: "MALE",
                      ),
                    ),
                  ),
                  Expanded(
                    child: reusable_card(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.Female;
                        });
                      },
                      customchild: iconWidget(
                        icon: Icons.female_rounded,
                        label: "FEMALE",
                      ),
                      colors: selectedGender == Gender.Female
                          ? activeCardColor
                          : inactiveCardColor,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: reusable_card(
                colors: activeCardColor,
                customchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: labelStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: numTextStyle,
                        ),
                        Text(
                          'cm',
                          style: labelStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF1f0f38),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 13.0, elevation: 0.0),
                        overlayShape: RoundSliderThumbShape(
                            enabledThumbRadius: 13.0, elevation: 0.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 100.0,
                        max: 300.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: reusable_card(
                          customchild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "WEIGHT",
                                style: labelStyle,
                              ),
                              Text(
                                weight.toString(),
                                style: numTextStyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Listener(
                                    onPointerDown: (details) {
                                      _isPressed = true;
                                      _decfastWeight();
                                    },
                                    onPointerUp: (details) {
                                      _isPressed = false;
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFF381769),
                                          shape: BoxShape.circle,
                                        ),
                                        padding: EdgeInsets.all(15.0),
                                        child: Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                        )),
                                  ),
                                  SizedBox(
                                    width: 14.0,
                                  ),
                                  Listener(
                                    onPointerDown: (details) {
                                      _isPressed = true;
                                      _incfastWeight();
                                    },
                                    onPointerUp: (details) {
                                      _isPressed = false;
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFF381769),
                                          shape: BoxShape.circle,
                                        ),
                                        padding: EdgeInsets.all(15.0),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        )),
                                  ),
                                ],
                              )
                            ],
                          ),
                          colors: activeCardColor)),
                  Expanded(
                    child: reusable_card(
                        customchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "AGE",
                              style: labelStyle,
                            ),
                            Text(
                              age.toString(),
                              style: numTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Listener(
                                  onPointerDown: (details) {
                                    _isPressed = true;
                                    _decfastAge();
                                  },
                                  onPointerUp: (details) {
                                    _isPressed = false;
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFF381769),
                                        shape: BoxShape.circle,
                                      ),
                                      padding: EdgeInsets.all(15.0),
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      )),
                                ),
                                SizedBox(
                                  width: 14.0,
                                ),
                                Listener(
                                  onPointerDown: (details) {
                                    _isPressed = true;
                                    _incfastAge();
                                  },
                                  onPointerUp: (details) {
                                    _isPressed = false;
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFF381769),
                                        shape: BoxShape.circle,
                                      ),
                                      padding: EdgeInsets.all(15.0),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      )),
                                ),
                              ],
                            )
                          ],
                        ),
                        colors: activeCardColor),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/result');
              },
              child: Container(
                child: Center(
                  child: Text("CALCULATE!",
                      style: TextStyle(color: Colors.white, fontSize: 30.0)),
                ),
                margin: EdgeInsets.only(top: 10.0),
                height: 80.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFFEB1555),
                    borderRadius:
                        BorderRadius.vertical(
                          top: Radius.circular(18.0)
                        )
                ),
              ),
            )
          ],
        ));
  }
}
