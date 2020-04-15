import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:makeatwist/login/home/twist_list.dart';
import 'package:makeatwist/models/twist_model.dart';
import 'package:makeatwist/services/auth.dart';
import 'package:makeatwist/services/database.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    void _showSettingsPanel() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
              child: Text('bottom sheet'),
            );
          });
    }

    return StreamProvider<List<Twist>>.value(
      value: DataBaseService().twists,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Make a Twist'),
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('logout'),
              onPressed: () async {
                await _auth.signOut();
              },
            ),
            FlatButton.icon(
              icon: Icon(Icons.disc_full),
              label: Text('Create Record'),
              onPressed: () {},
            )
          ],
        ),
        backgroundColor: Colors.brown[50],
        body: TwistList(),
      ),
    );
  }
}
