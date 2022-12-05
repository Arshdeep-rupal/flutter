// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unused_local_variable

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion(){
    print('answer chosen');
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
          title: Text('My First Bar'),
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text('The Question '),
            ElevatedButton(
              child: Text ('answer 1'),
              onPressed: () => print("answer1 chosen"),
              ),
            ElevatedButton(
              child: Text ('answer 2'), 
              onPressed: () => print('answer 2 chosen'),
              ),
            ElevatedButton(
              child: Text ('answer 3'), 
              onPressed: () => print("answer 3 chosen"),
              ),
          ],
        ),
      ),
    );
  }
}