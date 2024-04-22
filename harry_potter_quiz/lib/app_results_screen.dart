import 'package:flutter/material.dart';
import 'package:harry_potter_quiz/app_summary_section.dart';
import 'package:harry_potter_quiz/data/questions.dart';
import 'package:harry_potter_quiz/app_summary_section.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.collectAnswers});

  final List<String> collectAnswers;

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
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("You've answered X out of Y questions correctly!"),
            const SizedBox(height: 30),
            SummarySection(getSummaryData()),
            const SizedBox(height: 30),
            TextButton(onPressed: () {}, child: const Text("Restart Quiz!"))
          ],
        ),
      ),
    );
  }
}
