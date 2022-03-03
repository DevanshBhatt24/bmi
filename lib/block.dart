import 'package:flutter/material.dart';

class box extends StatelessWidget {
   final Color color;
   final Widget? chlid;
   final void Function()? gesture;

  const box({required this.color,  this.chlid,this.gesture});
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gesture,
      child: Container(
              child: chlid,
              margin: const EdgeInsets.all(15), 
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10)
              ),

          ),
    );
  }
}
