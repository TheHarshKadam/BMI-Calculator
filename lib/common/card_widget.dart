import 'package:flutter/material.dart';

class reusable_card extends StatelessWidget {
  reusable_card({
    this.colors = Colors.transparent, 
    this.customchild,
    this.onPress,
  });

  final Color colors;
  final Widget? customchild;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: customchild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colors, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
