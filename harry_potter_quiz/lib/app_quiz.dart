import 'package:flutter/material.dart';
import 'package:harry_potter_quiz/data/questions.dart';
import 'package:harry_potter_quiz/start-screen.dart';
import 'package:harry_potter_quiz/app_questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = HomeScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(onSelectAnswer: collectAnswers);
    });
  }

  void collectAnswers(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = HomeScreen(switchScreen);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: const Color(0xffF2D3AC),
          child: activeScreen,
        ),
      ),
    );
  }
}
