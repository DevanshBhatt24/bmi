import 'package:bmi/constant.dart';
import 'package:flutter/material.dart';
import 'package:bmi/constant.dart';
class icon extends StatelessWidget {
  final IconData gender;
  final  String Name;
  const icon({required this.gender,required this.Name});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(gender,
          size: 80,),
        SizedBox(
          height: 15,
        ),
        Text(Name,
          style:kTextstyle,)
      ],
    );
  }
}
