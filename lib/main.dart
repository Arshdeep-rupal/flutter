// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unused_local_variable

import 'package:flutter/material.dart';


import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State <MyApp>{
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print (_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color ?',
      'What\'s your favorite animal ?',
      'what\'s your favorite language ?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Question
            (
              questions[_questionIndex],
            ),
            ElevatedButton(
              child: Text('answer 1'),
              onPressed: () => _answerQuestion()
            ),
            ElevatedButton(
              child: Text('answer 2'),
              onPressed: () => _answerQuestion(),
            ),
            ElevatedButton(
              child: Text('answer 3'),
              onPressed: () => _answerQuestion()
            ),
          ],
        ),
      ),
    );
  }
}