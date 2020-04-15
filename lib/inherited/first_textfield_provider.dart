import 'package:flutter/cupertino.dart';

class FirstInheritedTextField extends InheritedWidget {
  FirstInheritedTextField({Key key, @required this.firstIdea, Widget child})
      : super(key: key, child: child);

  final TextEditingController firstIdea;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static TextEditingController of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<FirstInheritedTextField>()
      .firstIdea;
}
