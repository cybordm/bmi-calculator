import 'package:flutter/material.dart';
import '../constants.dart';
class bottombutton extends StatelessWidget {
  final Function ontap;
  final String buttonTitle;
  bottombutton({this.buttonTitle, this.ontap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          child: Center(child: Text(buttonTitle, style: kLargeButtonTextStyle)),
          height: 80,
          width: double.infinity,
          margin: EdgeInsets.only(top: 10.0),
          padding: EdgeInsets.only(bottom: 10.0),
          color: kbottomcontainercolor),
    );
  }
}
