import 'dart:async';
import 'package:makeatwist/bloc/change_events.dart';
import 'package:makeatwist/models/page_index_model.dart';

class PageIndexBloc {
  PageIndexModel _indexModel = PageIndexModel();

  final _pageModelIndexStreamController = StreamController<PageIndexModel>();

  Sink<PageIndexModel> get _inPageIndex => _pageModelIndexStreamController.sink;
  Stream<PageIndexModel> get pageModelStream =>
      _pageModelIndexStreamController.stream;

  final _pageChangeEventController = StreamController<ChangeEvents>();
  Sink<ChangeEvents> get changeEventsSink => _pageChangeEventController.sink;

  PageIndexBloc() {
    _pageChangeEventController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(ChangeEvents event) {
    if (event is PageChangeEvent) {
      print('triggered a page change event');
      _indexModel.index = event.index.toDouble();
    }
    _inPageIndex.add(_indexModel);
  }

  void dispose() {
    _pageModelIndexStreamController.close();
    _pageChangeEventController.close();
  }
}
