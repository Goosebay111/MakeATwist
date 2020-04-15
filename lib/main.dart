import 'package:flutter/material.dart';
import 'package:makeatwist/login/main_widget.dart';
import 'package:makeatwist/models/user.dart';
import 'package:makeatwist/services/auth.dart';
import 'package:makeatwist/wrapper.dart';
import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Make a Twist',
        home: Wrapper(),
        //MainWidget(),
      ),
    );
  }
}
