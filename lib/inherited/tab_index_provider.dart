import 'package:flutter/material.dart';
import 'package:makeatwist/models/tab_index_model.dart';

class InheritedTabIndex extends InheritedWidget {
  InheritedTabIndex({Key key, @required this.indexData, Widget child})
      : super(key: key, child: child);

  final TabIndex indexData;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static TabIndex of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<InheritedTabIndex>().indexData;
}
