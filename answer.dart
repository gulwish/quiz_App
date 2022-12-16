import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Answer extends StatelessWidget {
  // const Answer( {Key? key}) : super(key: key);
  final VoidCallback selectHandler;
  final String answerText;
  //for different  return types ? use  type Function  instaed of VoidCallback
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(answerText),
      ),
      color: Colors.amber,
    );
  }
}
