import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final answerQuestion;
  final questionIndex;
  final questions;

  Quiz({this.questions, this.answerQuestion, this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        (Question(questions[questionIndex]['questionText'] as String)),
        ...(questions[questionIndex]['answers'] as List<String>)
            .map(
              (answer) => Answer(answerQuestion, answer),
            )
            .toList()
      ],
    );
  }
}
