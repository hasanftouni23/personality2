import 'package:personality_app1/models/question.dart';
import 'package:personality_app1/models/answer.dart';
import 'package:personality_app1/models/personality.dart';

final questions = [
  Question(
    text: 'How do you approach a difficult decision?',
    answers: [
      Answer(
        text: 'Analyze all options logically',
        type: PersonalityType.thinker,
      ),
      Answer(
        text: 'Go with what feels right emotionally',
        type: PersonalityType.feeler,
      ),
      Answer(
        text: 'Make a checklist and plan it out',
        type: PersonalityType.planner,
      ),
      Answer(
        text: 'Take a leap and deal with results later',
        type: PersonalityType.adventurer,
      ),
    ],
  ),
  Question(
    text: 'What excites you the most?',
    answers: [
      Answer(text: 'Solving complex problems', type: PersonalityType.thinker),
      Answer(
        text: 'Connecting deeply with others',
        type: PersonalityType.feeler,
      ),
      Answer(
        text: 'Creating a clear path to your goals',
        type: PersonalityType.planner,
      ),
      Answer(text: 'Exploring something new', type: PersonalityType.adventurer),
    ],
  ),
  Question(
    text: 'Which best describes your work style?',
    answers: [
      Answer(text: 'Detail-focused and logical', type: PersonalityType.thinker),
      Answer(
        text: 'People-centered and intuitive',
        type: PersonalityType.feeler,
      ),
      Answer(text: 'Organized and systematic', type: PersonalityType.planner),
      Answer(
        text: 'Flexible and spontaneous',
        type: PersonalityType.adventurer,
      ),
    ],
  ),
  Question(
    text: 'How do you recharge after a long day?',
    answers: [
      Answer(
        text: 'Quiet reflection or reading',
        type: PersonalityType.thinker,
      ),
      Answer(
        text: 'Spending time with close friends',
        type: PersonalityType.feeler,
      ),
      Answer(text: 'Planning tomorrow\'s tasks', type: PersonalityType.planner),
      Answer(
        text: 'Doing something active or exciting',
        type: PersonalityType.adventurer,
      ),
    ],
  ),
  Question(
    text: 'You\'re most comfortable when...',
    answers: [
      Answer(text: 'Things make logical sense', type: PersonalityType.thinker),
      Answer(text: 'Everyone is getting along', type: PersonalityType.feeler),
      Answer(text: 'There\'s a clear structure', type: PersonalityType.planner),
      Answer(
        text: 'You\'re free to try new things',
        type: PersonalityType.adventurer,
      ),
    ],
  ),
  Question(
    text: 'Your biggest strength is...',
    answers: [
      Answer(text: 'Thinking critically', type: PersonalityType.thinker),
      Answer(text: 'Empathizing with others', type: PersonalityType.feeler),
      Answer(text: 'Staying organized', type: PersonalityType.planner),
      Answer(text: 'Being adventurous', type: PersonalityType.adventurer),
    ],
  ),
];
