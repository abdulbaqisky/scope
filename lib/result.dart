import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScore >= 80) {
      resultText = 'You are a brainiac';
    } else if (resultScore >= 60) {
      resultText = 'You really tried';
    } else if (resultScore >= 50) {
      resultText = 'try again you can do better';
    } else
      resultText = 'You are a monkey';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(onPressed: resetQuiz, child: Text('Restart Quiz'))
        ],
      ),
    );
  }
}
