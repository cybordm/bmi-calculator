import 'package:flutter/material.dart';
import 'screens/bmi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI CALCULATOR',
      theme: ThemeData.dark().copyWith(
        primaryColor:Color(0xFF0A0E21),
        scaffoldBackgroundColor:Color(0xFF0A0E21),
      ),
      home:bmi(),
    );
  }
}


