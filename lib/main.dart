import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppstate();
  }
}

class _MyAppstate extends State<MyApp> {
  @override
  final _questions = const [
    {
      'questiontext': 'what\'s your favourite color',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 5},
        {'text': 'Red', 'score': 3},
        {'text': 'Red', 'score': 1}
      ]
    },
    {
      'questiontext': 'what\'s your favourite Animal',
      'answers': [
        {'text': 'Elephant', 'score': 10},
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Lion', 'score': 3},
        {'text': 'Tiger', 'score': 1}
      ]
    },
    {
      'questiontext': 'what\'s your favourite Letter',
      'answers': [
        {'text': 'A', 'score': 10},
        {'text': 'B', 'score': 5},
        {'text': 'C', 'score': 3},
        {'text': 'D', 'score': 1}
      ]
    },
  ];
  var _questionindex = 0;
  var _totalscore = 0;
  void _resetQuiz() {
    setState(() {
      _questionindex = 0;
      _totalscore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalscore += score;
    setState(() {
      _questionindex = _questionindex + 1;
    });

    print(_questionindex);
    if (_questionindex < _questions.length) {
      print('we have no more questions');
    } else {
      print('no more question');
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First APP'),
      ),
      body: _questionindex < _questions.length
          ? Quiz(
              answerQuestions: _answerQuestions,
              questionindex: _questionindex,
              questions: _questions,
            )
          : Result(
              _totalscore,
              _resetQuiz,
            ),
    ));
  }
}
