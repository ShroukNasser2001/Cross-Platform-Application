import 'dart:math';

import 'package:flutter/material.dart';
//import 'package:quiz_app/question_model.dart';

void main() {
  runApp(const MaterialApp(home: QuizPage()));
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  TextStyle textStyle = TextStyle(fontSize: 25, color: Colors.white);
  IconData answerIcon = Icons.done;
  // List<Icon> ScoreKeeper = [];
//if(answerIcon ==Icons.done){color=green}
  //else{color=red}

  //answerIcon ==Icons.done?green:red

  List<QuestionModel> quiz = [
    QuestionModel("Is Appbar's color is blue?", "true"),
    QuestionModel("Is background color is green?", "false"),
    QuestionModel("Is Appbar's color is blue?", "true"),
    QuestionModel("Is background color is green?", "false"),
    QuestionModel("Is Appbar's color is blue?", "true"),
    QuestionModel("Is background color is green?", "false")
  ];
  List<bool> ScoreKeeper = [];

  int index = 0;
  Random r = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
              child: Center(
                child: Text(
                  quiz[index].question,
                  style: textStyle,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                checkAnswer("true");
              },
              child: Text("True"),
              style: ElevatedButton.styleFrom(primary: Colors.green, fixedSize: Size((MediaQuery.of(context).size.width - 40), 80)),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  checkAnswer("false");
                },
                child: Text("False"),
                style: ElevatedButton.styleFrom(primary: Colors.red, fixedSize: Size(325, 80))),
            SizedBox(
              height: 30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ScoreKeeper.length,
                itemBuilder: (context, index) {
                  return Icon(
                    ScoreKeeper[index] ? Icons.done : Icons.close,
                    size: 30,
                    color: ScoreKeeper[index] ? Colors.green : Colors.red,
                  );
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }

  checkAnswer(String userAnswer) {
    //لو الاجابه الصح false وانت ضغط علي false
    //يبقي النتيجه صحيحه
    if (quiz[index].correctAnswer == userAnswer) {
      setState(() {
        if (index < quiz.length - 1) index++;

        ScoreKeeper.add(true);
      });
    } else {
      setState(() {
        //ScoreKeeper.add(Icon(Icons.close));
        //answerIcon = Icons.close;
        if (index < quiz.length - 1) index++;

        ScoreKeeper.add(false);
      });
      //answerIcon= aIcon[index];
    }
  }
}

class QuestionModel {
  String question = "Question";
  String correctAnswer = "True";

  QuestionModel(this.question, this.correctAnswer);
}
