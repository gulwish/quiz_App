import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Question extends StatelessWidget {
//properteis
  final String questionText;
  Question(this.questionText); //storing

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(30),
      child: Text(
        questionText, //passed data
        style: TextStyle(fontSize: 20, backgroundColor: Colors.blueAccent),
        textAlign: TextAlign.center,
      ),
    );
  }
}
