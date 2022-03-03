import 'package:bmi/ResultPage.dart';
import 'package:bmi/bottombutton.dart';
import 'package:bmi/buttton.dart';
import 'package:bmi/calculator.dart';
import 'package:bmi/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/block.dart';
import 'package:bmi/icon.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
enum gender{
  male,
  female,
}
int height=120;
int weight=60;
int age=10;
class _InputPageState extends State<InputPage> {
  gender? selectedgender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0A0E21),
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body:Column(
        children: [
          Expanded(
            child: Row(
              children:  [
                Expanded(
                  child: box(color: selectedgender==gender.male?kActivecolor:kInactivecolor,
                    chlid: icon(gender: FontAwesomeIcons.mars, Name: "MALE"),
                    gesture: (){
                      setState(() {
                        selectedgender=gender.male;
                      });
                    },
                  ),

                ),
                Expanded(

                  child: box(color: selectedgender==gender.female?kActivecolor:kInactivecolor,
                    chlid: icon(gender: FontAwesomeIcons.venus, Name: "FEMALE"),
                    gesture: (){
                      setState(() {
                        selectedgender=gender.female  ;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: box(color: Color(0xff1D1E33),
                chlid: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("HEIGHT",style: kTextstyle,),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberstyle,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          'cm',
                          style: kTextstyle,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xff8D8E98),
                        thumbColor: Color(0xffEB1555),
                        overlayColor: Color(0x29EB1555),
                        overlayShape: RoundSliderOverlayShape(overlayRadius:30),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15 ),
                      ),
                      child: Slider(value:height.toDouble() ,
                          min: 120,
                          max: 220,

                          onChanged:(double newvalue){
                        setState(() {
                          height=newvalue.toInt();
                        });
                          }, ),
                    )
                  ],
                ),
              )
          ),

          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Expanded(child: box(color: Color(0xff1D1E33),
                chlid:  Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'WEIGHT',
                      style: kTextstyle,
                    ),

                    Text(weight.toString(),
                    style: kNumberstyle,),

                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      RoundIconButton(child: FontAwesomeIcons.plus, onpressed: (){
                      setState(() {
                        weight++;
                      });
                      }),
                        SizedBox(
                          width: 15,
                        ),
                        RoundIconButton(child: FontAwesomeIcons.minus, onpressed: (){
                          setState(() {
                            weight--;
                          });
                        })
                    ],)
                  ],
                ),)),
                Expanded(child: box(color: Color(0xff1D1E33),  chlid:  Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'AGE',
                      style: kTextstyle,
                    ),

                    Text(age.toString(),
                      style: kNumberstyle,),

                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(child: FontAwesomeIcons.plus, onpressed: (){
                          setState(() {
                            age++;
                          });
                        }),
                        SizedBox(
                          width: 15,
                        ),
                        RoundIconButton(child: FontAwesomeIcons.minus, onpressed: (){
                          setState(() {
                            age--;
                          });
                        })
                      ],
                    ),
                  ],
                ),),),
              ],
            ),
          ),
      BottomButton(label: "CALCULATE", ontp:(){
        calculator cal=calculator(height: height, weight: weight);
        Navigator.push(context,
        MaterialPageRoute(builder: (context)=>result(Result: cal.calculate(), getinter: cal.getinter(), getreesult: cal.getResult())));
      }
      )
        ],
      ),
    );
  }
}

