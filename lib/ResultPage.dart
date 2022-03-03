import 'package:bmi/block.dart';
import 'package:bmi/bottombutton.dart';
import 'package:flutter/material.dart';
import 'package:bmi/constant.dart';
class result extends StatelessWidget {
  final String Result;
  final String getreesult;
  final String getinter;
  const result({required this.Result,required this.getinter,required this.getreesult}) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
        backgroundColor:  Color(0xff0A0E21),
     ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0,30,90,0),
            child: Text('Your Result',style: kNumberstyle,),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(child:box(color: Color(0xff1D1E33),
          chlid: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(getreesult.toUpperCase(),style: kstyle,),
              Text(Result,style: kNumstyle,),
              Text(getinter,style: kstyle2,
              textAlign: TextAlign.center,)
            ],
          ),),),
          SizedBox(
            height: 20,
          ),
        BottomButton(label: "RECALCULATE", ontp: (){Navigator.pop(context);})
        ],
      )
    );
  }
}

