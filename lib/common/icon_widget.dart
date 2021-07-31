import 'package:flutter/material.dart';
import 'card_widget.dart';
import 'package:sizer/sizer.dart';

const labelStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class iconWidget extends StatelessWidget {
  const iconWidget({this.icon = Icons.male_rounded, this.label = "String"});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(height: 15.0,),
        Text(
         "$label",
          style: labelStyle.copyWith(fontSize: 20.0.sp,),
        )
      ],
    );
  }
}
