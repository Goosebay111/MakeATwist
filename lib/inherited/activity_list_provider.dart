import 'package:flutter/material.dart';
import 'package:makeatwist/models/twist_model.dart';

class InheritedActivityList extends InheritedWidget {
  InheritedActivityList({Key key, @required this.activityList, Widget child})
      : super(key: key, child: child);

  final List<Twist> activityList;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static List<Twist> of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<InheritedActivityList>()
      .activityList;
}
