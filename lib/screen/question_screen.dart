import 'package:flutter/material.dart';
import 'package:personality_app1/data/questions.dart';

class QuestionScreen extends StatelessWidget {
  final int questionIndex;
  final void Function(int) onAnswerSelected;

  const QuestionScreen({
    super.key,
    required this.questionIndex,
    required this.onAnswerSelected,
  });

  @override
  Widget build(BuildContext context) {
    final question = questions[questionIndex];

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            question.text,
            style: const TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () => onAnswerSelected(0),
            child: Text(question.answers[0].text),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => onAnswerSelected(1),
            child: Text(question.answers[1].text),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => onAnswerSelected(2),
            child: Text(question.answers[2].text),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => onAnswerSelected(3),
            child: Text(question.answers[3].text),
          ),
        ],
      ),
    );
  }
}
