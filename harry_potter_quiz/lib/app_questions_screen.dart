import 'package:flutter/material.dart';
import 'package:harry_potter_quiz/app_answer_button.dart';
import 'package:harry_potter_quiz/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

//a
class _QuestionsScreenState extends State<QuestionsScreen> {
  final currentQuestion = questions[0];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                currentQuestion.questionText,
                style: const TextStyle(
                    color: Color(0xff401201),
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 40),
            ...currentQuestion.answerList.map((answer) {
              return AnswerButton(answerText: answer, onAnswerSelect: () {});
            }),
          ],
        ),
      ),
    );
  }
}
