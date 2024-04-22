import 'package:flutter/material.dart';
import 'package:harry_potter_quiz/app_answer_button.dart';
import 'package:harry_potter_quiz/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  QuestionsScreen({super.key, required this.onSelectAnswer});

  void Function(String answer) onSelectAnswer;
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

//a
class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    setState(() {
      widget.onSelectAnswer(selectedAnswer);
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
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
            ...currentQuestion.getShuffledAnswerList().map((answer) {
              return AnswerButton(
                  answerText: answer,
                  onAnswerSelect: () {
                    answerQuestion(answer);
                  });
            }),
          ],
        ),
      ),
    );
  }
}
