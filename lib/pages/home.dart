
import 'package:flutter/material.dart';
import 'package:bmi_calculator/common/reuse_card.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

const activeCardColor = Color(0xFF27104a);

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
                  child: reusable_card(
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: reusable_card(
                    colour: activeCardColor,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: reusable_card(
              colour: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: new reusable_card(
                    colour: activeCardColor, 
                  ),
                ),
                Expanded(
                  child: reusable_card(
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
