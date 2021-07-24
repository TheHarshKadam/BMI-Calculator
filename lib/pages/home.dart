import 'package:bmi_calculator/common/icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/common/card_widget.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

const activeCardColor = Color(0xFF27104b);
const inactiveCardColor = Color(0xFF1f0f38);
enum Gender { Male, Female }

class _homeState extends State<home> {
  Gender selectedGender = Gender.Male;

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
                    child: reusable_card(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.Male;
                        });
                      },
                      colors: selectedGender == Gender.Male
                          ? activeCardColor
                          : inactiveCardColor,
                      customiconWidget: iconWidget(
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
                      customiconWidget: iconWidget(
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
              child: reusable_card(colors: activeCardColor),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: reusable_card(colors: activeCardColor)),
                  Expanded(
                    child: reusable_card(colors: activeCardColor),
                  )
                ],
              ),
            ),
          ],
        )
      );
  }
}
