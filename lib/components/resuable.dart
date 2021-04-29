import 'package:flutter/material.dart';
class resuable extends StatelessWidget {
  resuable({this.colour, this.card,this.onpress});

  final Color colour;
  final Widget card;
final Function onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onpress,
      child: Container(
        child: card,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}