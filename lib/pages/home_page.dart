import 'package:flutter/material.dart';
import 'package:makeatwist/bloc/change_events.dart';
import 'package:makeatwist/factory/card_factory_data.dart';
import 'package:makeatwist/helpers/option_type_helper.dart';
import 'package:makeatwist/inherited/page_index_provider.dart';
import 'package:makeatwist/subwidgets/card_assembler_subwidget.dart';
import 'package:makeatwist/subwidgets/card_body_subwidget.dart';

class HomePage extends StatefulWidget {
  HomePage({this.option});

  final OptionType option;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var _bloc = Provider.of(context);

    CardSettings _cardSettings = CardSettings.fromType(widget.option);
    List<Widget> cards = [];

    pageList(cards, _cardSettings);

    return PageView(
      // TODO: Link to state so a dot indicator can be used.
      onPageChanged: (index) {
        setState(() {
          _bloc.changeEventsSink.add(PageChangeEvent(index: index));
        });
      },
      children: cards,
    );
  }

  void pageList(List<Widget> cards, CardSettings _cardSettings) {
    for (var index = 0; index < 7; index++) {
      cards.add(
        CardBody(
          key: UniqueKey(),
          backgroundColor: _cardSettings.backgroundColor,
          secondBackgroundColor: _cardSettings.secondBackgroundColor,
          cardInsert: cardAssembler(
              index: index,
              primaryColor: _cardSettings.primaryColor,
              secondaryColor: _cardSettings.secondaryColor,
              buttonColor: _cardSettings.buttonColor,
              buttonFontColor: _cardSettings.buttonFontColor,
              topCard: _cardSettings.topCard,
              bottomCard: _cardSettings.bottomCard,
              buttonTitle: _cardSettings.buttonTitle),
        ),
      );
    }
  }
}
