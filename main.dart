import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'widgets/question.dart';
import 'widgets/answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _ansQues() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'what \'s your favourite animal',
        'answers': ['parrot', 'cat', 'fish', 'dog']
      },
      {
        'questionText': 'what \'s youir favourite color',
        'answers': ['green', 'orange', 'yellow', 'blue']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("welcome!!!!"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]['questionText'] as String),
            ...(questions[_questionIndex]['answers'] as List<String>).map(
                //function
                (answer) {
              return Answer(_ansQues, answer);
            }).toList(),
            // create our answers dynamically based on the selected question?
//transform that answers list into list of widgets then  added  column.
// map now takes a function which runs on all our answers , I get answer and I forward to naswer widget
//what these three dots do here is they take a list which is exactly what we have here and they pull all
//the values in the list out of it and add them to the surrounding list as individual values,
//so that we don't add a list(generated list of widgets ) to a list (column wali )
//but the values of a list to a list, having only one list without a nested list.

            //Answer(_ansQues),
          ],
        ),
      ),
    );
  }
}
