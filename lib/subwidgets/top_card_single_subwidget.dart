import 'package:flutter/material.dart';
import 'package:makeatwist/inherited/activity_provider.dart';
import 'package:makeatwist/inherited/first_textfield_provider.dart';
import 'package:makeatwist/models/activity_model.dart';

class SingleFormat extends StatelessWidget {
  SingleFormat(
      {this.primaryColor,
      this.secondaryColor,
      this.heading,
      this.headingContext,
      this.descriptor});

  final String heading;
  final String headingContext;
  final String descriptor;
  final Color primaryColor;
  final Color secondaryColor;

  @override
  Widget build(BuildContext context) {
    final Activity _activity = InheritedActivity.of(context);
    final TextEditingController _controller =
        FirstInheritedTextField.of(context);

    return Expanded(
      flex: 3,
      child: Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              heading,
              style: TextStyle(fontSize: 25, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            TextField(
              controller: _controller,
              onChanged: (String value) {
                _activity.imaginedTwist = '$heading $value $descriptor';
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
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              descriptor,
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
