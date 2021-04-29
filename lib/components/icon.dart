import 'package:flutter/material.dart';
import '../constants.dart';
class icon extends StatelessWidget {
  final IconData iconType;
  final String label;
  icon(this.iconType,this.label);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,children: [
      Icon(iconType,size: 80.0,),
      SizedBox(height: 15.0,),
      Text(label,style: kTextstyle,),
    ],);
  }
}
