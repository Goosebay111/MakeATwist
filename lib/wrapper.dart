import 'package:flutter/material.dart';
import 'package:makeatwist/login/authenticate/authenticate.dart';
import 'package:makeatwist/login/home/home.dart';
import 'package:makeatwist/models/user.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    //return either home of authenticate widget
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
