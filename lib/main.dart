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
