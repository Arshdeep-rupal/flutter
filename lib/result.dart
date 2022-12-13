
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final void Function() resetHandler;

  // ignore: use_key_in_widget_constructors
  const Result(this.resultScore, this.resetHandler);

  String get resultPhase {
    String resultText;
    if(resultScore<=8){
      resultText = 'you are awesome and innocent!';
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
        child: Column(
          children: [
            Text(
              resultPhase,
                  style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                TextButton(
                  onPressed: resetHandler,
                  // ignore: prefer_const_constructors
                  child: Text(
                    'Restart Quiz',
                    selectionColor: Colors.blue,
                    // ignore: prefer_const_constructors
                    style: TextStyle(fontSize: 20),
                    ),
                ),
          ],
        ),
          );
  }
}
