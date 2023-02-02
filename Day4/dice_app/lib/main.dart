import 'package:flutter/material.dart';
import 'dart:math';

int leftD = 1;
int rightD = 1;
Random random = new Random();

void roleDice(){
  leftD = random.nextInt(6)+1 ;
  rightD = random.nextInt(6)+1 ;
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(child: Text("::Dicey-Dicey::")),
          backgroundColor: Colors.black12,
        ),
        body: decisionDice(),
      ),
    ),
  );
}
class decisionDice extends StatefulWidget {
  const decisionDice({Key? key}) : super(key: key);

  @override
  State<decisionDice> createState() => _decisionDiceState();
}

class _decisionDiceState extends State<decisionDice> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: TextButton(
                    onPressed: () {
                      print("left Button clicked");
                      setState(() {
                       roleDice();
                      });
                    },
                    child: Image.asset('images/dice$leftD.png')),
              )),
          Expanded(
              flex: 1,
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextButton(
                      onPressed: () {
                        print("right Button Pressed");
                        setState(() {
                          roleDice();
                        });
                      },
                      child: Image.asset('images/dice$rightD.png')))),
        ],
      ),
    );
  }
  }





