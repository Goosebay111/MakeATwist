import 'package:flutter/material.dart';
import 'package:makeatwist/inherited/activity_list_provider.dart';
import 'package:makeatwist/inherited/activity_provider.dart';
import 'package:makeatwist/inherited/first_textfield_provider.dart';
import 'package:makeatwist/inherited/second_textfield_provider.dart';
import 'package:makeatwist/inherited/tab_index_provider.dart';
import 'package:makeatwist/models/activity_model.dart';
import 'package:makeatwist/models/twist_model.dart';
import 'package:makeatwist/models/tab_index_model.dart';

class BottomButton extends StatelessWidget {
  BottomButton(
      {@required this.buttonColor,
      @required this.buttonFontColor,
      @required this.buttonTitle});

  final Color buttonColor, buttonFontColor;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    //providers
    Activity _activity = InheritedActivity.of(context);
    List<Twist> _activityList = InheritedActivityList.of(context);
    TabIndex _tabIndex = InheritedTabIndex.of(context);
    TextEditingController _firstTextController =
        FirstInheritedTextField.of(context);
    TextEditingController _secondTextController =
        SecondInheritedTextField.of(context);

    return Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: MaterialButton(
          color: buttonColor,
          minWidth: MediaQuery.of(context).size.width,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
          onPressed: () {
            _checkForEmptyTextFields(
                tabIndex: _tabIndex,
                activity: _activity,
                activityList: _activityList,
                firstTextController: _firstTextController,
                secondTextController: _secondTextController);

            _firstTextController.clear();
            _secondTextController.clear();
          },
          child: Text(
            buttonTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: buttonFontColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  void _checkForEmptyTextFields(
      {@required TabIndex tabIndex,
      @required Activity activity,
      @required TextEditingController firstTextController,
      @required TextEditingController secondTextController,
      @required List<Twist> activityList}) {
    if (activity.imaginedTwist != '' && firstTextController.text.isNotEmpty) {
      if (activity.numberOfTopSections == 1) {
        activityList.add(Twist(
          title: activity.radioTwist,
          subtitle: activity.imaginedTwist,
          tabIndex: tabIndex.index,
        ));
      }
      if (activity.numberOfTopSections == 2) {
        if (secondTextController.text.isEmpty) {
        } else if (secondTextController.text.isNotEmpty) {
          print(activity.radioTwist);
          activityList.add(Twist(
            title: activity.radioTwist,
            subtitle: activity.imaginedTwist,
            tabIndex: tabIndex.index,
          ));
        }
      }
    } else {
      print('data was not added to the first textfield');
    }
  }
}
