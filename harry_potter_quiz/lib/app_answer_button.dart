import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {required this.answerText, required this.onAnswerSelect, super.key});

  final String answerText;
  final void Function() onAnswerSelect;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onAnswerSelect,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 100,
        ),
        foregroundColor: const Color(0xffF2D3AC),
        backgroundColor: const Color(0xff401201),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Text(answerText),
    );
  }
}
