import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/question_summer/question_summary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            QuestionSummary(summaryData),
            SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              label: Text(
                "Restart Quiz!",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: Icon(
                Icons.refresh,
                color: Colors.white,
                size: 28,
              ),
            )
          ],
        ),
      ),
    );
  }
}
