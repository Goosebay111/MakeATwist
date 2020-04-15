import 'package:flutter/material.dart';

class BackdropWidget extends StatelessWidget {
  const BackdropWidget({
    Key key,
    @required Color backgroundColor,
    @required Color secondBackgroundColor,
  })  : _backgroundColor = backgroundColor,
        _secondBackgroundColor = secondBackgroundColor,
        super(key: key);

  final Color _backgroundColor;
  final Color _secondBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.3,
      child: Center(
        child: Container(
          alignment: Alignment.topCenter,
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [_backgroundColor, _secondBackgroundColor],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
    );
  }
}
