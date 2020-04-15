import 'package:flutter/material.dart';
import 'package:makeatwist/bloc/page_index_bloc.dart';

class Provider extends InheritedWidget {
  Provider({Key key, Widget child}) : super(key: key, child: child);

  final bloc = PageIndexBloc();

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static PageIndexBloc of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<Provider>().bloc;
}
