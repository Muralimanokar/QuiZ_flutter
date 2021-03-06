import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final resultscore;
  final Function resetHandler;

  Result(this.resultscore, this.resetHandler);
  String get resultphrase {
    String resulttext;
    if (resultscore <= 8) {
      resulttext = 'you are Awesome and Innocent';
    } else if (resultscore <= 12) {
      resulttext = 'You are pretty LIKE!!';
    } else if (resultscore <= 16) {
      resulttext = 'You are ...STRANGE!!';
    } else {
      resulttext = 'You are BAD@';
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultphrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: resetHandler,
          child: Text(
            'Restart quiz',
          ),
          textColor: Colors.blue,
        )
      ],
    ));
  }
}
