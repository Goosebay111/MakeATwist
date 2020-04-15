import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:makeatwist/subwidgets/backdrop_subwidget.dart';

class CardBody extends StatelessWidget {
  const CardBody({
    Key key,
    @required Color backgroundColor,
    @required Color secondBackgroundColor,
    @required this.cardInsert,
  })  : _backgroundColor = backgroundColor,
        _secondBackgroundColor = secondBackgroundColor,
        super(key: key);

  final Color _backgroundColor;
  final Color _secondBackgroundColor;
  final List<Widget> cardInsert;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        BackdropWidget(
          backgroundColor: _backgroundColor,
          secondBackgroundColor: _secondBackgroundColor,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: cardInsert,
        ),
      ],
    );
  }
}
