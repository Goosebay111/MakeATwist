import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:makeatwist/models/twist_model.dart';

class DataBaseService {
  final String uid;

  DataBaseService({this.uid});

  // collection reference
  final CollectionReference twistCollection =
      Firestore.instance.collection('twists');

  Future updateUserData(
      String title, String subtitle, int tabIndex, bool isFinished) async {
    return await twistCollection.document(uid).setData({
      'title': title,
      'subtitle': subtitle,
      'tabIndex': tabIndex,
      'isFinished': isFinished,
    });
  }

  //  list from snapshot
  List<Twist> _twistListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((document) {
      return Twist(
        title: document.data['title'] ?? '',
        subtitle: document.data['subtitle'] ?? '',
        tabIndex: document.data['tabIndex'] ?? 0,
      );
    }).toList();
  }

  // get twists stream
  Stream<List<Twist>> get twists {
    return twistCollection.snapshots().map(_twistListFromSnapshot);
  }
}
