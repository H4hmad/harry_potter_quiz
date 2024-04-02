import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz, {super.key});

  final Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/harry_potter.png',
            // width: 300,
          ),
          const SizedBox(height: 30),
          const Text(
            'Harry Potter Quiz',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_right_alt_rounded),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.blue,
            ),
            onPressed: startQuiz,
            label: const Text(
              'Start Quiz!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}
