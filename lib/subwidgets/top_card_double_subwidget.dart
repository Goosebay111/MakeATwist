import 'package:flutter/material.dart';
import 'package:makeatwist/inherited/activity_provider.dart';
import 'package:makeatwist/inherited/first_textfield_provider.dart';
import 'package:makeatwist/inherited/second_textfield_provider.dart';
import 'package:makeatwist/models/activity_model.dart';

class DoubleFormat extends StatelessWidget {
  DoubleFormat(
      {this.primaryColor,
      this.secondaryColor,
      this.heading,
      this.headingContext,
      this.descriptor,
      this.heading2,
      this.headingContext2,
      this.descriptor2});

  final Color primaryColor, secondaryColor;
  final String heading,
      headingContext,
      descriptor,
      heading2,
      headingContext2,
      descriptor2;

  @override
  Widget build(BuildContext context) {
//
    final Activity _activity = InheritedActivity.of(context);
    final TextEditingController _firstController =
        FirstInheritedTextField.of(context);
    final TextEditingController _secondController =
        SecondInheritedTextField.of(context);
//
    return Expanded(
      flex: 4,
      child: Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              heading,
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            TextField(
              controller: _firstController,
              onChanged: (String value) {
                _activity.imaginedTwist =
                    '$heading ${_firstController.text}$descriptor $heading2${_secondController.text}$descriptor2';
                print(_activity.imaginedTwist);
              },
              textAlign: TextAlign.center,
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: Colors.grey.shade800,
                fontSize: 16.0,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Enter an idea.',
                labelStyle: TextStyle(color: Colors.purple),
                border: OutlineInputBorder(),
              ),
            ),
            Text(
              headingContext,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              descriptor,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            Text(
              heading2,
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            TextField(
              controller: _secondController,
              onChanged: (String value) {
                _activity.imaginedTwist =
                    '$heading ${_firstController.text} $descriptor $heading2 ${_secondController.text} $descriptor2';
              },
              textAlign: TextAlign.center,
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: Colors.grey.shade800,
                fontSize: 16.0,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Enter an idea.',
                labelStyle: TextStyle(color: Colors.purple),
                border: OutlineInputBorder(),
              ),
            ),
            Text(
              headingContext2,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              descriptor2,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          gradient: LinearGradient(
            colors: [primaryColor, secondaryColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}
