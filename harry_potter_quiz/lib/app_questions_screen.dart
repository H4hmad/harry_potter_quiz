import 'package:flutter/material.dart';
import 'package:harry_potter_quiz/app_answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

//a
class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Questions Screen'),
          const SizedBox(height: 40),
          AnswerButton(answerText: " ANSWER 1", onAnswerSelect: () {}),
          AnswerButton(answerText: " ANSWER 2", onAnswerSelect: () {}),
          AnswerButton(answerText: " ANSWER 3", onAnswerSelect: () {}),
        ],
      ),
    );
  }
}
