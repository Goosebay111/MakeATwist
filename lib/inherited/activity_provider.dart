import 'package:flutter/material.dart';
import 'package:makeatwist/models/activity_model.dart';

class InheritedActivity extends InheritedWidget {
  InheritedActivity({Key key, @required this.appData, Widget child})
      : super(key: key, child: child);

  final Activity appData;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static Activity of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<InheritedActivity>().appData;
}
