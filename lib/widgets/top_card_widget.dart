import 'package:flutter/material.dart';
import 'package:makeatwist/inherited/activity_provider.dart';
import 'package:makeatwist/models/activity_model.dart';
import 'package:makeatwist/subwidgets/top_card_single_subwidget.dart';
import 'package:makeatwist/subwidgets/top_card_double_subwidget.dart';

class TopCard extends StatelessWidget {
  TopCard(
      {@required this.primaryColor,
      @required this.secondaryColor,
      @required this.count,
      @required this.heading,
      @required this.headingContext,
      @required this.descriptor,
      @required this.heading2,
      @required this.headingContext2,
      @required this.descriptor2});

  final Color primaryColor, secondaryColor;
  final int count;
  final String heading,
      headingContext,
      descriptor,
      heading2,
      headingContext2,
      descriptor2;

  @override
  Widget build(BuildContext context) {
    Activity activity = InheritedActivity.of(context);

    if (count == 1) {
      activity.numberOfTopSections = 1;
      return SingleFormat(
        primaryColor: primaryColor,
        secondaryColor: secondaryColor,
        heading: heading,
        headingContext: headingContext,
        descriptor: descriptor,
      );
    } else if (count == 2) {
      activity.numberOfTopSections = 2;
      return DoubleFormat(
        primaryColor: primaryColor,
        secondaryColor: secondaryColor,
        heading: heading,
        headingContext: headingContext,
        descriptor: descriptor,
        heading2: heading2,
        headingContext2: headingContext2,
        descriptor2: descriptor2,
      );
    } else {
      return Text('There is an unexpected number of enteries');
    }
  }
}
