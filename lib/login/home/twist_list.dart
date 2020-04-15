import 'package:flutter/material.dart';
import 'package:makeatwist/models/twist_model.dart';
import 'package:provider/provider.dart';

class TwistList extends StatefulWidget {
  @override
  _TwistListState createState() => _TwistListState();
}

class _TwistListState extends State<TwistList> {
  @override
  Widget build(BuildContext context) {
    final twists = Provider.of<List<Twist>>(context);
    // print(twists.documents);
    return ListView.builder(
      itemCount: twists.length,
      itemBuilder: (context, index) {
        return TwistTile(twist: twists[index]);
      },
    );
  }
}

class TwistTile extends StatelessWidget {
  TwistTile({this.twist});
  final Twist twist;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.brown,
          ),
          title: Text(twist.title),
          subtitle: Text(twist.subtitle),
          trailing: Text(twist.tabIndex.toString()),
        ),
      ),
    );
  }
}
