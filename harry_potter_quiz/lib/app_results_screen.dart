import 'package:flutter/material.dart';
import 'package:harry_potter_quiz/app_summary_section.dart';
import 'package:harry_potter_quiz/data/questions.dart';
import 'package:harry_potter_quiz/app_quiz.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.collectAnswers, required this.restartQuiz});

  final List<String> collectAnswers;

  final void Function() restartQuiz;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summaryData = [];

    for (var loopVariable = 0;
        loopVariable < collectAnswers.length;
        loopVariable++) {
      summaryData.add(
        {
          'questionIndex': loopVariable,
          'question': questions[loopVariable].questionText,
          'chosenAnswer': collectAnswers[loopVariable],
          'correctAnswer': questions[loopVariable].answerList[0],
        },
      );
    }
    return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numOfQuestions = questions.length;

    final numOfCorrectAnswers = summaryData.where(
      (data) {
        return data['correctAnswer'] == data['chosenAnswer'];
      },
    ).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
                "You've answered $numOfCorrectAnswers out of $numOfQuestions questions correctly!"),
            const SizedBox(height: 30),
            SummarySection(summaryData),
            const SizedBox(height: 30),
            TextButton(
                onPressed: restartQuiz, child: const Text("Restart Quiz!"))
          ],
        ),
      ),
    );
  }
}
