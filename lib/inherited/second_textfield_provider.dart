import 'package:flutter/cupertino.dart';

class SecondInheritedTextField extends InheritedWidget {
  SecondInheritedTextField({Key key, @required this.secondIdea, Widget child})
      : super(key: key, child: child);

  final TextEditingController secondIdea;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static TextEditingController of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<SecondInheritedTextField>()
      .secondIdea;
}
