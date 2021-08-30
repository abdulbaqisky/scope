import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO:  implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'Whats your fav Color?',
      'answers': ['Black', 'Blue', 'Green'],
    },
    {
      'questionText': 'Whats your fav animal',
      'answers': ['Rabbit', 'Snake', 'Lion', 'Elephant', 'Dog'],
    },
    {
      'questionText': 'Is my age 50',
      'answers': ['Yes', 'No', 'iono'],
    },
  ];
  var _questionNumber = 0;
  void _answerQuestion() {
    if (_questionNumber < questions.length) {
      setState(() {
        _questionNumber++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Quiz'),
        ),
        body: _questionNumber < questions.length
            ? Column(
                children: [
                  (Question(
                      questions[_questionNumber]['questionText'] as String)),
                  ...(questions[_questionNumber]['answers'] as List<String>)
                      .map(
                        (answer) => Answer(_answerQuestion, answer),
                      )
                      .toList()
                ],
              )
            : Center(
                child: Text("You did it!"),
              ),
      ),
    );
  }
}
/*
    : Center(
child: Text('No more questions'),
),*/
