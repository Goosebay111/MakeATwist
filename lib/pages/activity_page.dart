import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:makeatwist/inherited/activity_list_provider.dart';
import 'package:makeatwist/models/twist_model.dart';

class ActivityPage extends StatefulWidget {
  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    //provider
    List<Twist> _list = InheritedActivityList.of(context);
    //ui components.
    Icon _optionIcon = Icon(FontAwesomeIcons.compass);
    Color _displayColor = Colors.blue;
    return ListView.builder(
      itemCount: _list.length,
      itemBuilder: (BuildContext context, int index) {
        int twistType = _list[index].tabIndex;

        _displayColor = colorLogic(twistType, _displayColor);
        _optionIcon = iconLogic(twistType, _optionIcon, _displayColor);

        return Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              side: BorderSide(width: 5, color: _displayColor)),
          elevation: 7.0,
          margin: EdgeInsets.all(5.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(8.0),
              leading: _optionIcon,
              title: Text(
                _list[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(_list[index].subtitle),
              trailing: IconButton(
                icon: _list[index].isFinished != false
                    ? Icon(FontAwesomeIcons.award, color: _displayColor)
                    : Icon(
                        FontAwesomeIcons.square,
                        color: Colors.black,
                      ),
                onPressed: () {
                  setState(() {
                    _list[index].isFinished = true;
                  });
                },
              ),
            ),
          ),
        );
      },
    );
  }

  Icon iconLogic(int twistType, Icon _optionIcon, Color _displayColor) {
    switch (twistType) {
      case 0:
        _optionIcon = Icon(
          FontAwesomeIcons.compass,
          color: _displayColor,
        );
        break;
      case 1:
        _optionIcon = Icon(
          FontAwesomeIcons.microscope,
          color: _displayColor,
        );
        break;
      case 2:
        _optionIcon = Icon(
          FontAwesomeIcons.theaterMasks,
          color: _displayColor,
        );
        break;
      default:
        _optionIcon = Icon(
          FontAwesomeIcons.compass,
          color: _displayColor,
        );
        break;
    }
    return _optionIcon;
  }

  Color colorLogic(int twistType, Color _displayColor) {
    switch (twistType) {
      case 0:
        _displayColor = Colors.blue;
        break;
      case 1:
        _displayColor = Colors.purple;
        break;
      case 2:
        _displayColor = Colors.red;
        break;
      default:
        _displayColor = Colors.blue;
        break;
    }
    return _displayColor;
  }
}
