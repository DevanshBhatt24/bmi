import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget{
 final IconData child;
final void Function() onpressed;
 const RoundIconButton({required this.child,required this.onpressed});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RawMaterialButton(onPressed: onpressed,
      child: Icon(child),
      elevation: 6,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        height: 56,
        width: 56,
      ),
      fillColor: Color(0xff4C4F5E),
    );
  }
}