import 'package:flutter/material.dart';
import 'package:bmi/constant.dart';
class BottomButton extends StatelessWidget {
  final String label;
  final void Function() ontp;
  const BottomButton({required this.label,required this.ontp});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontp,
      child: Container(
        child: Center(
          child: Text(label,style: kbottombutton),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomNavigationBarHeight,
      ),
    );
  }
}
