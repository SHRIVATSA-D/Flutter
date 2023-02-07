import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quizBrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(backgroundColor: Colors.black38, body: Quizzler()),
  ));
}

class Quizzler extends StatefulWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  State<Quizzler> createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  void checkAnswer({required bool buttonType}) {
    bool correctAns = quizBrain.getAnswer();

    setState(() {
      if (quizBrain.isFinished() == true) {
        Alert(
          context: context,
          title: 'Quiz Finished!',
          desc: 'Yuo have reached the end of the quiz.',
        ).show();

        quizBrain.reset();
        scoreKeeper = [];
      } else {
        if (buttonType == correctAns) {
          print('correct');
          scoreKeeper.add(Icon(Icons.check, color: Colors.green));
        } else {
          print('Wrong');
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  List<Icon> scoreKeeper = [];

  int i = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Expanded(
            child: Center(
                child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            quizBrain.getQuestionText(),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ))),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: TextButton(
              onPressed: () {
                checkAnswer(buttonType: true);
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 80),
                  child: Text("TRUE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      )))),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: TextButton(
              onPressed: () {
                checkAnswer(buttonType: false);
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 80),
                  child: Text("FALSE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      )))),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: scoreKeeper,
        )
      ],
    ));
  }
}
/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
