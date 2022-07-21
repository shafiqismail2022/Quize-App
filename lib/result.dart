import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int scoreResult;
  final Function resetResult;
  Result(this.scoreResult, this.resetResult);
  String get resultPhrase {
    var resultText = 'You Did It';
    if (scoreResult <= 8) {
      resultText = 'You have a positive attitude and thats awesome';
    } else if (scoreResult <= 12) {
      resultText = 'Pretty likeable';
    } else if (scoreResult <= 16) {
      resultText = 'You are different';
    } else {
      resultText = 'That akward';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase ?? 'default',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            textColor: Colors.blue,
            child: Text('Reset Quize'),
            onPressed: resetResult,
          )
        ],
      ),
    );
  }
}
