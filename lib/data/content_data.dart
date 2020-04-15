import 'package:makeatwist/models/bottom_card_model.dart';
import 'package:makeatwist/models/top_card_model.dart';

class ContentData {
  static List<BottomCardModel> contentBottomData() {
    return [
      BottomCardModel(
        option1: 'Future model',
        option2: 'Artist\'s representation',
        option3: 'Breaking news bulletin',
        option4: 'Future display',
      ),
      BottomCardModel(
        option1: 'Presentation in character',
        option2: 'Personal profile',
        option3: 'This person\'s shoe',
        option4: 'Autobiography',
      ),
      BottomCardModel(
        option1: 'Crest and Motto',
        option2: 'Poster',
        option3: 'Dance Piece',
        option4: 'Advertisement',
      ),
      BottomCardModel(
        option1: 'Mini class lesson',
        option2: 'Activity book',
        option3: 'Workstations',
        option4: 'Blog or Wiki',
      ),
      BottomCardModel(
        option1: 'Recipe',
        option2: 'Inside/outside mask',
        option3: 'Treasure chest',
        option4: 'Hanging mobile',
      ),
      BottomCardModel(
        option1: 'Role play',
        option2: 'Recount of an event',
        option3: 'Textbook chapter',
        option4: 'Time capsule',
      ),
      BottomCardModel(
        option1: 'Book cover',
        option2: 'Collection',
        option3: 'Jingle',
        option4: '',
      ),
    ];
  }

  static List<TopCardModel> contentTopData() {
    return [
      TopCardModel(
          numberOfSections: 1,
          heading: 'Imagine what',
          headingContext: '(class topic/class theme/student\'s choice)',
          descriptor: 'will be like in 100 years in the future',
          heading2: '',
          headingContext2: '',
          descriptor2: ''),
      TopCardModel(
          numberOfSections: 2,
          heading: 'Put yourself in the shoes of',
          headingContext: '',
          descriptor: '',
          heading2: 'who has/had a major role in',
          headingContext2: '(class topic/class theme/student\'s choice)',
          descriptor2: ''),
      TopCardModel(
          numberOfSections: 1,
          heading: 'Explore symbols and find meaning behind',
          headingContext: '(class topic/class theme/student\'s choice)',
          descriptor: '',
          heading2: '',
          headingContext2: '',
          descriptor2: ''),
      TopCardModel(
          numberOfSections: 2,
          heading: 'How could',
          headingContext: '(class topic/class theme/student\'s choice)',
          descriptor: '',
          heading2: 'be taught in',
          headingContext2: '(another subject area)',
          descriptor2: ''),
      TopCardModel(
          numberOfSections: 1,
          heading: 'Explore the ideas that form',
          headingContext: '(class topic/class theme/student\'s choice)',
          descriptor: '',
          heading2: '',
          headingContext2: '',
          descriptor2: ''),
      TopCardModel(
          numberOfSections: 1,
          heading: 'Find out how a big discovery was made in',
          headingContext: '(class topic/class theme/student\'s choice)',
          descriptor: '',
          heading2: '',
          headingContext2: '',
          descriptor2: ''),
      TopCardModel(
          numberOfSections: 1,
          heading: 'DESIGN YOUR OWN \nLook at your interest in a different way',
          headingContext: '(my own theme/topic)',
          descriptor: '',
          heading2: '',
          headingContext2: '',
          descriptor2: ''),
    ];
  }
}
