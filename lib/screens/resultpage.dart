import 'package:bmi_calculator/components/resuable.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../components/resuable.dart';
import '../constants.dart';
import '../components/bottombutton.dart';



class result extends StatelessWidget {
  result({this.resulttext,this.bmiresult,this.interpretation});
  final String resulttext;
  final String bmiresult;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text('Your Result', style: ktitletextstyle),
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.bottomLeft,
            ),
          ),
          Expanded(
            flex: 5,
            child: resuable(
              colour: kactivecardcolor,
              card: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resulttext,
                    style: kresulttextstyle,
                  ),
                  Text(
                    bmiresult,
                    style: kbminumberstyle,
                  ),
                  Text(
                    interpretation,
                    style: kbodytextstyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          bottombutton(
            ontap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RECALCULATE',
          ),
        ],
      ),
    );
  }
}
