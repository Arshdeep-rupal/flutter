// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unused_local_variable

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const questions = [
    {
      'questionText': 'What\'s your favorite color ?',
      'answer': ['black', 'red', 'green', 'white'],
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answer': ['dog', 'cat', 'horse', 'lion'],
    },
    {
      'questionText': 'what\'s your favorite language ?',
      'answer': ['c++', 'Dart', 'java', 'python'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < questions.length) {
      print('we have more quiestion');
    }
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
        body: _questionIndex < questions.length
            ? Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Question(
                    questions[_questionIndex]['questionText'].toString(),
                  ),
                  ...(questions[_questionIndex]['answer'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(child: Text('you dd it! ')),
      ),
    );
  }
}
