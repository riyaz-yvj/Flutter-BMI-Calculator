import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BmiCalc());
}

class BmiCalc extends StatelessWidget {
  const BmiCalc({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}
