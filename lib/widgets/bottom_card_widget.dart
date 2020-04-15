import 'package:flutter/material.dart';
import 'package:makeatwist/subwidgets/radio_card_subwidget.dart';

class BottomCard extends StatelessWidget {
  BottomCard({
    this.primaryColor,
    this.secondaryColour,
    this.option1,
    this.option2,
    this.option3,
    this.option4,
  });

  final String option1, option2, option3, option4;
  final Color primaryColor, secondaryColour;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        margin: EdgeInsets.only(left: 8.0, right: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          gradient: LinearGradient(
            colors: [primaryColor, secondaryColour],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Activity (choose one)',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            RadioCardWidget(
              option1: option1,
              option2: option2,
              option3: option3,
              option4: option4,
            ),
          ],
        ),
      ),
    );
  }
}
