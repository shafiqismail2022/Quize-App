// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function functionAnswer;
  final String answerText;
  Answer(this.functionAnswer, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText),
        textColor: Colors.white,
        onPressed: functionAnswer,
      ),
    );
  }
}
