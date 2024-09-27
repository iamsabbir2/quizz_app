import 'package:flutter/material.dart';
import 'package:quizz_app/answers_button.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key,required this.onSelected});

  final void Function(String answer) onSelected; 
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {


  var questionIndex = 0;

  void questionAnswer(String selectedAnswer)  
  {
    widget.onSelected(selectedAnswer);

    setState(() {
      questionIndex++;
        
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin:const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.text,
             style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          ...currentQuestion.getShuffledAnswers().map(
            (answer) {
              return AnswerButton(
              answerText: answer, 
              onTap:(){
                questionAnswer(answer);
              } );
            },
          )
        ]),
      ),
    );
  }
}
