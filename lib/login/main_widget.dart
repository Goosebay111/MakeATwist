import 'package:flutter/material.dart';
import 'package:makeatwist/inherited/activity_list_provider.dart';
import 'package:makeatwist/inherited/activity_provider.dart';
import 'package:makeatwist/inherited/page_index_provider.dart';
import 'package:makeatwist/inherited/tab_index_provider.dart';
import 'package:makeatwist/models/activity_model.dart';
import 'package:makeatwist/models/twist_model.dart';
import 'package:makeatwist/models/tab_index_model.dart';
import 'package:makeatwist/pages/menu_page.dart';

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InheritedActivity(
      appData: Activity(),
      child: InheritedActivityList(
        activityList: Twist.all(),
        child: Provider(
          child: InheritedTabIndex(
            indexData: TabIndex(index: 0),
            child: MenuPage(),
          ),
        ),
      ),
    );
  }
}
