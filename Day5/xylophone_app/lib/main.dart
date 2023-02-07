import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  XylophoneApp({Key? key}) : super(key: key);

  void note(int NoteNum) {
    final player = AudioCache();
    player.play('note$NoteNum.wav');
  }

  Expanded noteButton({required color, required int NoteNum}){
    return Expanded(
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder()
          ),
          onPressed: (){
            note(NoteNum);
          },
          child: Container(),),);

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.black12,
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            noteButton(color: Colors.red, NoteNum: 1),
            noteButton(color: Colors.orange, NoteNum: 2),
            noteButton(color: Colors.yellow, NoteNum: 3),
            noteButton(color: Colors.lightGreen, NoteNum: 4),
            noteButton(color: Colors.green, NoteNum: 5),
            noteButton(color: Colors.lightBlue, NoteNum: 6),
            noteButton(color: Colors.blue, NoteNum: 7),
          ],
        ))));
  }
}
