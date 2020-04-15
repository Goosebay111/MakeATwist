import 'package:makeatwist/models/bottom_card_model.dart';
import 'package:makeatwist/models/top_card_model.dart';

class ProcessData {
  static List<BottomCardModel> processBottomData() {
    return [
      BottomCardModel(
        option1: '\'Odd one out\' quiz',
        option2: 'Song',
        option3: '\'Choose your own adventure\' story',
        option4: 'Comic strip',
      ),
      BottomCardModel(
        option1: 'Children\'s book',
        option2: 'Blueprints',
        option3: 'Compare and contrast chart',
        option4: 'Fairytale',
      ),
      BottomCardModel(
        option1: 'Stand-up comedy',
        option2: 'Joke book',
        option3: 'Poem',
        option4: 'Puppet show',
      ),
      BottomCardModel(
        option1: 'Creative story',
        option2: 'Artwork',
        option3: 'Mime',
        option4: 'Digital story',
      ),
      BottomCardModel(
        option1: 'Experiment',
        option2: 'Investigation',
        option3: 'Survey and report',
        option4: 'News broadcast',
      ),
      BottomCardModel(
        option1: 'Timeline',
        option2: 'Documentary',
        option3: 'Mini museum',
        option4: 'Set of photographs',
      ),
      BottomCardModel(
        option1: 'Mini map',
        option2: 'Presentation of \'then\' and \'now\'',
        option3: 'Presentation of moral dilemmas',
        option4: '',
      ),
    ];
  }

  static List<TopCardModel> processTopData() {
    return [
      TopCardModel(
          numberOfSections: 1,
          heading: 'What are some common misunderstandings about',
          headingContext: '(class topic/class theme/student\'s choice)',
          descriptor: '',
          heading2: '',
          headingContext2: '',
          descriptor2: ''),
      TopCardModel(
          numberOfSections: 1,
          heading: 'How is',
          headingContext: '(class topic/class theme/student\'s choice)',
          descriptor: '',
          heading2: 'the same as AND different from',
          headingContext2: '(class topic/class theme/student\'s choice)',
          descriptor2: ''),
      TopCardModel(
          numberOfSections: 1,
          heading: 'Create a comedic piece based on',
          headingContext: '(class topic/class theme/student\'s choice)',
          descriptor: '',
          heading2: '',
          headingContext2: '',
          descriptor2: ''),
      TopCardModel(
          numberOfSections: 1,
          heading: 'Imagine what would a dream about',
          headingContext: '(class topic/class theme/student\'s choice)',
          descriptor: 'be like?',
          heading2: '',
          headingContext2: '',
          descriptor2: ''),
      TopCardModel(
          numberOfSections: 2,
          heading: 'My question about',
          headingContext: '(class topic/class theme/student\'s choice)',
          descriptor: '',
          heading2: 'is',
          headingContext2: '',
          descriptor2: ''),
      TopCardModel(
          numberOfSections: 1,
          heading: 'Discover the changes that have occurred in',
          headingContext: '(class topic/class theme/student\'s choice)',
          descriptor: '',
          heading2: '',
          headingContext2: '',
          descriptor2: ''),
      TopCardModel(
          numberOfSections: 1,
          heading: 'DESIGN YOUR OWN\nLooking at your interest in a\ndeeper way',
          headingContext: '(class topic/class theme/student\'s choice)',
          descriptor: '',
          heading2: '',
          headingContext2: '',
          descriptor2: ''),
    ];
  }
}
