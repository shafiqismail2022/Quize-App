// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './quize.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _question = const [
    {
      'questionText': 'What\'s your favourite Colour?',
      'Answar': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 3},
        {'text': 'Red', 'score': 5},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favourite Animal?',
      'Answar': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 1},
        {'text': 'Lion', 'score': 9}
      ]
    },
    {
      'questionText': 'Whose\'s your favourite Instractor?',
      'Answar': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1}
      ]
    },
  ];
  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: _questionIndex < _question.length
            ? Quize(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                question: _question)
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
