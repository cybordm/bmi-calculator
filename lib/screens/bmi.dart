import 'resultpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon.dart';
import '../components/resuable.dart';
import '../constants.dart';
import 'package:bmi_calculator/calculator.dart';

import '../components/bottombutton.dart';
enum gender { male, female }

class bmi extends StatefulWidget {
  @override
  bmiState createState() => bmiState();
}

class bmiState extends State<bmi> {
  gender selectedCard;
  int height = 180;
  int weight = 60;
  int age = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: resuable(
                        onpress: () {
                          setState(() {
                            selectedCard = gender.male;
                          });
                        },
                        colour: selectedCard == gender.male
                            ? kactivecardcolor
                            : kinactivecardcolor,
                        card: icon(FontAwesomeIcons.mars, 'Male'))),
                Expanded(
                    child: resuable(
                        onpress: () {
                          setState(() {
                            selectedCard = gender.female;
                          });
                        },
                        colour: selectedCard == gender.female
                            ? kactivecardcolor
                            : kinactivecardcolor,
                        card: icon(FontAwesomeIcons.venus, 'Female'))),
              ],
            ),
          ),
          Expanded(
              child: resuable(
            colour: kactivecardcolor,
            card: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HEIGHT',
                  style: kTextstyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(height.toString(), style: knymberstyle),
                    Text(
                      'cm',
                      style: kTextstyle,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    inactiveTrackColor: Color(0xFF8D8E98),
                    activeTrackColor: Colors.white,
                    thumbColor: Color(0xFFEB1555),
                    overlayColor: Color(0x29EB1555),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120,
                    max: 220,
                    onChanged: (double newvalue) {
                      setState(() {
                        height = newvalue.round();
                      });
                    },
                  ),
                ),
              ],
            ),
          )),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: resuable(
                      card: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: kTextstyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                weight.toString(),
                                style: knymberstyle,
                              ),
                              Text(
                                'Kg',
                                style: kTextstyle,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              button(
                                f: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                c: Icon(FontAwesomeIcons.minus),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              button(
                                f: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                c: Icon(FontAwesomeIcons.plus),
                              ),
                            ],
                          )
                        ],
                      ),
                      colour: kactivecardcolor),
                ),
                Expanded(
                  child: resuable(
                      card: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: kTextstyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                age.toString(),
                                style: knymberstyle,
                              ),
                              Text(
                                'yrs',
                                style: kTextstyle,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              button(
                                f: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                c: Icon(FontAwesomeIcons.minus),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              button(
                                f: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                c: Icon(FontAwesomeIcons.plus),
                              ),
                            ],
                          )
                        ],
                      ),
                      colour: kactivecardcolor),
                ),
              ],
            ),
          ),
          bottombutton(
            ontap: () {
              Calculator calc= Calculator(height:height,weight: weight);

              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => result(bmiresult: calc.calculatorBmi(),
              resulttext: calc.getResult(),
              interpretation: calc.getInterpretation(),)));},
            buttonTitle: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}


class button extends StatelessWidget {
  button({this.f, this.c});
  final Function f;
  final Widget c;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RawMaterialButton(
      onPressed: f,
      child: c,
      elevation: 6,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
    );
  }
}
