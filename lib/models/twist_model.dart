import 'package:flutter/cupertino.dart';

class Twist {
  Twist({
    this.title,
    this.subtitle,
    this.tabIndex,
  });
  final String title;
  final String subtitle;
  final int tabIndex;
  bool isFinished = false;

  static List<Twist> all() => [];
}
