import 'package:makeatwist/models/bottom_card_model.dart';
import 'package:makeatwist/models/top_card_model.dart';

class ProductData {
  static List<BottomCardModel> productBottomData() {
    return [
      BottomCardModel(
        option1: 'Clay animation or LEGO animation',
        option2: 'Flip book',
        option3: 'Cartoon animation',
        option4: 'Sand animation',
      ),
      BottomCardModel(
        option1: 'Presentation as a guest speaker',
        option2: 'Re-enactment of an event',
        option3: 'Video',
        option4: 'Photographic diary entry',
      ),
      BottomCardModel(
        option1: 'Board/strategy game',
        option2: 'Class Quiz Show',
        option3: 'Treasure hunt',
        option4: 'Online game',
      ),
      BottomCardModel(
        option1: 'Community service act',
        option2: 'Fundraising campaign',
        option3: 'Public awareness',
        option4: 'Partnership',
      ),
      BottomCardModel(
        option1: 'Criteria sheet',
        option2: 'Checklist',
        option3: 'Reflection',
        option4: 'Feedback form',
      ),
      BottomCardModel(
        option1: 'Magazine article',
        option2: 'Display',
        option3: 'Personal notebook',
        option4: 'Storyboard',
      ),
      BottomCardModel(
        option1: 'Booklet',
        option2: 'Documentary',
        option3: 'Working model',
        option4: '',
      ),
    ];
  }

  static List<TopCardModel> productTopData() {
    return [
      TopCardModel(
          numberOfSections: 1,
          heading: 'Change what you know about',
          headingContext: '(class topic/class theme/student\'s choice)',
          descriptor: 'into an animation',
          heading2: '',
          headingContext2: '',
          descriptor2: ''),
      TopCardModel(
          numberOfSections: 1,
          heading: 'A day in the life of a',
          headingContext: '(class topic/class theme/student\'s choice)',
          descriptor: '',
          heading2: '',
          headingContext2: '',
          descriptor2: ''),
      TopCardModel(
          numberOfSections: 1,
          heading: 'Show your learning about',
          headingContext: '(class topic/class theme/student\'s choice)',
          descriptor: 'as a game',
          heading2: '',
          headingContext2: '',
          descriptor2: ''),
      TopCardModel(
          numberOfSections: 1,
          heading:
              'Design your own community and sevice project to address the problem of concern about',
          headingContext: '(class topic/class theme/student\'s choice)',
          descriptor: '',
          heading2: '',
          headingContext2: '',
          descriptor2: ''),
      TopCardModel(
          numberOfSections: 1,
          heading: 'Rate your work on',
          headingContext: '(class topic/class theme/student\'s choice)',
          descriptor: 'by developing your own...',
          heading2: '',
          headingContext2: '',
          descriptor2: ''),
      TopCardModel(
          numberOfSections: 1,
          heading:
              'What problems and solutions led to the awarding of a Nobel Prize in the area of',
          headingContext: '(class topic/class theme/student\'s choice)',
          descriptor: '',
          heading2: '',
          headingContext2: '',
          descriptor2: ''),
      TopCardModel(
          numberOfSections: 2,
          heading: 'DESIGN YOUR OWN\nDiscover a real-life application of',
          headingContext: '(My own theme/topic)',
          descriptor: '',
          heading2: 'This will be presented to:',
          headingContext2: '',
          descriptor2: ''),
    ];
  }
}
