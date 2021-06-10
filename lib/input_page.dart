import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColour = Color(0xFFEB1555);
const activeCardColour = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  const InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator')),
      ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              ReusableCard(colour: activeCardColour),
              ReusableCard(colour: activeCardColour),
            ],
          )),
          ReusableCard(colour: activeCardColour),
          Expanded(child: Row(
            children: [
              ReusableCard(colour: activeCardColour),
              ReusableCard(colour: activeCardColour),
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: bottomContainerColour,
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {

  ReusableCard({@required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
