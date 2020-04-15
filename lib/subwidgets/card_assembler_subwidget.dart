import 'package:flutter/material.dart';
import 'package:makeatwist/widgets/bottom_button_widget.dart';
import 'package:makeatwist/widgets/bottom_card_widget.dart';
import 'package:makeatwist/widgets/top_card_widget.dart';
import 'package:makeatwist/models/top_card_model.dart';
import 'package:makeatwist/models/bottom_card_model.dart';

List<Widget> cardAssembler(
    {@required int index,
    @required Color primaryColor,
    @required Color secondaryColor,
    @required Color buttonColor,
    @required Color buttonFontColor,
    @required List<TopCardModel> topCard,
    @required List<BottomCardModel> bottomCard,
    @required String buttonTitle}) {
  List<Widget> card = [];
  card.add(
    TopCard(
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,
      count: topCard[index].numberOfSections,
      heading: topCard[index].heading,
      headingContext: topCard[index].headingContext,
      descriptor: topCard[index].descriptor,
      heading2: topCard[index].heading2,
      headingContext2: topCard[index].headingContext2,
      descriptor2: topCard[index].descriptor2,
    ),
  );
  card.add(BottomCard(
    primaryColor: primaryColor,
    secondaryColour: secondaryColor,
    option1: bottomCard[index].option1,
    option2: bottomCard[index].option2,
    option3: bottomCard[index].option3,
    option4: bottomCard[index].option4,
  ));
  card.add(BottomButton(
    buttonColor: buttonColor,
    buttonFontColor: buttonFontColor,
    buttonTitle: buttonTitle,
  ));

  return card;
}
