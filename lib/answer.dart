// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() selectHandler;
  final String answerText;
  const Answer(this.selectHandler, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color.fromARGB(255, 6, 128, 243),
      child: ElevatedButton(
        child: Text(answerText, selectionColor: Colors.white),
        onPressed: selectHandler,
      ),
    );
  }
}
