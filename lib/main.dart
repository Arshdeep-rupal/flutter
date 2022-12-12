// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unused_local_variable

import 'package:flutter/material.dart';
import 'package:quizz/answer.dart';

import './quizz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What\'s your favorite color ?',
      'answer': [
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 5},
        {'text': 'green', 'score': 3},
        {'text': 'white', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answer': [
        {'text': 'dog','score': 2 },
        {'text': 'cat','score': 5 },
        {'text': 'horse','score': 10 },
        {'text': 'lion','score': 1 }
      ],
    },
    {
      'questionText': 'what\'s your favorite language ?',
      'answer': [
        {'text': 'c++','score': 10 },
        {'text': 'Dart','score': 7 },
        {'text': 'java','score': 3 },
        {'text': 'python','score': 5 }
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  

  void _answerQuestion(int score) {

    _totalScore =_totalScore + score;

    setState(() {
      
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}


//
//int score