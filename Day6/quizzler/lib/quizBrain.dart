import 'questions.dart';
class QuizBrain{
  int _i=0;
  List<Question> _questionList =[
    Question(Q:'You can lead a cow down stairs but not up stairs., false', A: false),
    Question(Q:'Approximately one quarter of human bones are in the feet., true', A: true),
    Question(Q:'A slugs blood is green., true', A: true),
    Question(Q: 'Some cats are actually allergic to humans', A: true),
    Question(Q: 'You can lead a cow down stairs but not up stairs.',A: false),
    Question(Q: 'Approximately one quarter of human bones are in the feet.',A: true),
    Question(Q:'A slug\'s blood is green.', A: true),
    Question(Q:'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',A: true),
    Question(Q:'It is illegal to pee in the Ocean in Portugal.', A: true),
    Question(Q: 'No piece of square dry paper can be folded in half more than 7 times.', A: false),
    Question(Q: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.', A: true),
    Question(Q: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.', A:false),
    Question(Q: 'The total surface area of two human lungs is approximately 70 square metres.', A:true),
    Question(Q:'Google was originally called \"Backrub\".', A:true),
    Question(Q: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.', A:true),
    Question(Q: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.', A:true),

  ];

  String getQuestionText(){
    return _questionList[_i].QuestionText;
  }
  bool getAnswer(){
    return _questionList[_i].answer;
  }
  void nextQuestion(){
    if(_i<_questionList.length-1){
      _i++;
    }

    }
  bool isFinished(){
    if(_i >= _questionList.length-1){
      return true;
    }
    else{
      return false;
    }

  }

  void reset(){
    _i=0;
  }


  }
