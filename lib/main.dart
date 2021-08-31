import 'package:flutter/material.dart';
import 'package:scope/result.dart';
import './quiz.dart';

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
  final _questions = const [
    {
      'questionText': 'Whats your fav Color?',
      'answers': [
        {'text': 'Black', 'score': 50},
        {'text': 'Blue', 'score': 30},
        {'text': 'Green', 'score': 20}
      ],
    },
    {
      'questionText': 'Whats your fav animal',
      'answers': [
        {'text': 'Rabbit', 'score': 30},
        {'text': 'Snake', 'score': 20},
        {'text': 'Lion', 'score': 10},
        {'text': 'Elephant', 'score': 8},
        {'text': 'Dog', 'score': 6}
      ],
    },
    {
      'questionText': 'Is my age 50',
      'answers': [
        {'text': 'Yes', 'score': 20},
        {'text': 'No', 'score': 10},
        {'text': 'iono', 'score': 2}
      ],
    },
  ];
  var _questionNumber = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += 1;
    if (_questionNumber < _questions.length) {
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
          body: _questionNumber < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionNumber,
                  questions: _questions,
                )
              : Result()),
    );
  }
}
/*
    : Center(
child: Text('No more questions'),
),*/
