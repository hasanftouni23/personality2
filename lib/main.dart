import 'package:flutter/material.dart';
import 'package:personality_app1/models/personality.dart';
import 'package:personality_app1/data/questions.dart';
import 'package:personality_app1/screen/start_screen.dart';
import 'package:personality_app1/screen/question_screen.dart';
import 'package:personality_app1/screen/result_screen.dart';

void main() {
  runApp(const PersonalityTestApp());
}

class PersonalityTestApp extends StatefulWidget {
  const PersonalityTestApp({super.key});

  @override
  State<PersonalityTestApp> createState() => _PersonalityTestAppState();
}

class _PersonalityTestAppState extends State<PersonalityTestApp> {
  int currentQuestion = -1;
  final Map<PersonalityType, int> scores = {
    for (var type in PersonalityType.values) type: 0,
  };

  void _startTest() {
    setState(() {
      currentQuestion = 0;
    });
  }

  void _answerSelected(int answerIndex) {
    final personality = questions[currentQuestion].answers[answerIndex].type;
    scores[personality] = scores[personality]! + 1;

    setState(() {
      currentQuestion++;
    });
  }

  void _restartTest() {
    setState(() {
      currentQuestion = -1;
      for (var type in PersonalityType.values) {
        scores[type] = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screen;

    if (currentQuestion == -1) {
      screen = StartScreen(onStart: _startTest);
    } else if (currentQuestion < questions.length) {
      screen = QuestionScreen(
        questionIndex: currentQuestion,
        onAnswerSelected: _answerSelected,
      );
    } else {
      final result = scores.entries
          .reduce((a, b) => a.value >= b.value ? a : b)
          .key;
      screen = ResultScreen(result: result, onRestart: _restartTest);
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 53, 78, 99),
        body: Padding(padding: const EdgeInsets.all(20), child: screen),
      ),
    );
  }
}
