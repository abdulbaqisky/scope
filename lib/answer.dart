import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback onAnswer;
  final String answerText;

  Answer(this.onAnswer, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onAnswer,
        child: Text(answerText),
      ),
    );
  }
}
