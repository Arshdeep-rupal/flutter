import 'dart:html';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhase {
    String resultText;
    if(resultScore<=8){
      resultText = 'you are awesome and innoccent!';
    }
    else if (resultScore <= 12){
      resultText = 'pretty likeable !';
    }
    else if(resultScore <= 16){
      resultText = 'you are ..... strange?!';
    }else{
      resultText = 'you are so bad !';
    }
    return resultText;
  } 

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(resultPhase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)
            )
          );
  }
}
