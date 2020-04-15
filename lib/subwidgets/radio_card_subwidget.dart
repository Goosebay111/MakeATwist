import 'package:flutter/material.dart';
import 'package:makeatwist/inherited/activity_provider.dart';
import 'package:makeatwist/models/activity_model.dart';

// this provides the code for the Radio buttons and label of the bottom card.

class RadioCardWidget extends StatefulWidget {
  RadioCardWidget({this.option1, this.option2, this.option3, this.option4});

  final String option1, option2, option3, option4;

  @override
  _RadioCardWidgetState createState() => _RadioCardWidgetState();
}

class _RadioCardWidgetState extends State<RadioCardWidget> {
  int _options = 0;
  List<Widget> listTilesList = [];
  bool _triggered = false;

  @override
  Widget build(BuildContext context) {
    List<String> optionsList = [
      widget.option1,
      widget.option2,
      widget.option3,
      widget.option4
    ];
    Activity activity = InheritedActivity.of(context);
    List<ListTile> listTilesList = [];
    setupTileList(listTilesList, optionsList, activity);

    // when pages appear, this conditional statement sets the value of activity.radio to the first value. it is very important.
    if (_triggered == false) {
      activity.radioTwist = optionsList[0];
      _triggered = true;
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: listTilesList,
    );
  }

  void setupTileList(List<ListTile> listTilesList, List<String> optionsList,
      Activity activity) {
    for (var index = 0; index < 4; index++) {
      listTilesList.add(
        ListTile(
          dense: true,
          title: Text(
            optionsList[index],
            style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          ),
          //ternary operator when a value is empty.
          leading: (optionsList[index] != '')
              ? Radio(
                  activeColor: Colors.white,
                  value: index,
                  groupValue: _options,
                  onChanged: (value) {
                    setState(() {
                      _options = value;
                      activity.radioTwist = optionsList[index];
                    });
                  },
                )
              : Text(''),
        ),
      );
    }
  }
}
