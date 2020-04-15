import 'package:flutter/material.dart';
import 'package:makeatwist/data/content_data.dart';
import 'package:makeatwist/data/process_data.dart';
import 'package:makeatwist/data/product_data.dart';
import 'package:makeatwist/helpers/option_type_helper.dart';
import 'package:makeatwist/models/bottom_card_model.dart';
import 'package:makeatwist/models/top_card_model.dart';

class CardSettings {
  final List<TopCardModel> topCard;
  final List<BottomCardModel> bottomCard;
  //settings
  final String id;
  final Color primaryColor;
  final Color secondaryColor;
  final Color buttonColor;
  final Color buttonFontColor;
  final Color backgroundColor;
  final Color secondBackgroundColor;
  final String buttonTitle;

  CardSettings([
    this.id,
    this.topCard,
    this.bottomCard,
    this.primaryColor,
    this.secondaryColor,
    this.buttonColor,
    this.buttonFontColor,
    this.backgroundColor,
    this.secondBackgroundColor,
    this.buttonTitle,
  ]);

  factory CardSettings.fromType([OptionType type]) {
    switch (type) {
      case OptionType.content:
        return ContentSettings();
      case OptionType.process:
        return ProcessSettings();
      case OptionType.product:
        return ProductSettings();
    }
    return CardSettings();
  }
}

// these classes are extensions of CardSettings.
class ContentSettings extends CardSettings {
  final List<TopCardModel> topCard = ContentData.contentTopData();
  final List<BottomCardModel> bottomCard = ContentData.contentBottomData();
  // settings
  final String id = 'content';
  final Color primaryColor = Colors.blue[900];
  final Color secondaryColor = Colors.lightBlueAccent;
  final Color buttonColor = Colors.lime;
  final Color buttonFontColor = Colors.indigo;
  final Color backgroundColor = Colors.lime;
  final Color secondBackgroundColor = Colors.lightGreenAccent;
  final String buttonTitle = 'ADD CONTENT';
}

class ProcessSettings extends CardSettings {
  final List<TopCardModel> topCard = ProcessData.processTopData();
  final List<BottomCardModel> bottomCard = ProcessData.processBottomData();
  // settings
  final String id = 'process';
  final Color primaryColor = Colors.purple[600];
  final Color secondaryColor = Colors.purpleAccent;
  final Color buttonColor = Colors.orange;
  final Color buttonFontColor = Colors.purple;
  final Color backgroundColor = Colors.deepOrange;
  final Color secondBackgroundColor = Colors.orangeAccent;
  final String buttonTitle = 'ADD PROCESS';
}

class ProductSettings extends CardSettings {
  final List<TopCardModel> topCard = ProductData.productTopData();
  final List<BottomCardModel> bottomCard = ProductData.productBottomData();
  // settings
  final String id = 'product';
  final Color primaryColor = Colors.red;
  final Color secondaryColor = Colors.deepOrangeAccent;
  final Color buttonColor = Colors.yellow[300];
  final Color buttonFontColor = Colors.red;
  final Color backgroundColor = Colors.yellowAccent;
  final Color secondBackgroundColor = Colors.yellow;
  final String buttonTitle = 'ADD PRODUCT';
}
