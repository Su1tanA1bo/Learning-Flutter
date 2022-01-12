import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion()
  {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favourite colour?",
      "What's your favourite animal?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz app'),
        ),
        body: Column(
          children: [
            Text(questions[_questionIndex]),
            ElevatedButton(onPressed: _answerQuestion, child: Text("Answer 1")),
            ElevatedButton(onPressed: () => print("Answer 2 chosen."), child: Text("Answer 2")),
            ElevatedButton(onPressed: () => print("Answer 3 chosen."), child: Text("Answer 3")),
          ],
        ),
      ),
    );
  }
}